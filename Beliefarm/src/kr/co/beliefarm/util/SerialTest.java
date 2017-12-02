package kr.co.beliefarm.util;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import gnu.io.CommPortIdentifier;
import gnu.io.SerialPort;
import gnu.io.SerialPortEvent;
import gnu.io.SerialPortEventListener;
import kr.co.beliefarm.service.DayValueService;
import kr.co.beliefarm.vo.DayValue;


@Component
public class SerialTest implements SerialPortEventListener {

	@Autowired
	DayValueService dayValueService;
	
    SerialPort serialPort;
    String inputData;
    String[] inputDataArr;
    DayValue dayValue;

    /** 당신의 아두이노와 연결된 시리얼 포트로 변경해야 한다. */
    private static final String PORT_NAMES[] = { "/dev/cu.wchusbserial1440"  };

    /** 포트에서 데이터를 읽기 위한 버퍼를 가진 input stream */
    private InputStream input;

    /** 포트를 통해 아두이노에 데이터를 전송하기 위한 output stream */
    private OutputStream output;

    /** 포트가 오픈되기 까지 기다리기 위한 대략적인 시간(2초) */
    private static final int TIME_OUT = 2000;

    /** 포트에 대한 기본 통신 속도, 아두이노의 Serial.begin의 속도와 일치 */
    private static final int DATA_RATE = 9600;



    public void initialize() {

        CommPortIdentifier portId = null;
        Enumeration portEnum = CommPortIdentifier.getPortIdentifiers();
        
        // 당신의 컴퓨터에서 지원하는 시리얼 포트들 중 아두이노와 연결된 포트에 대한 식별자를 찾는다.
        while (portEnum.hasMoreElements()) {
            CommPortIdentifier currPortId = (CommPortIdentifier) portEnum.nextElement();
            for (String portName : PORT_NAMES) {
                if (currPortId.getName().equals(portName)) {
                    portId = currPortId;
                    break;
                }
            }
        }// 식별자를 찾지 못했을 경우 종료

        if (portId == null) {
            System.out.println("Could not find COM port.");
            return;
        }

        try {// 시리얼 포트 오픈, 클래스 이름을 애플리케이션을 위한 포트 식별 이름으로 사용
            serialPort = (SerialPort) portId.open(this.getClass().getName(), TIME_OUT);
            // 속도등 포트의 파라메터 설정
            serialPort.setSerialPortParams(DATA_RATE, SerialPort.DATABITS_8, SerialPort.STOPBITS_1, SerialPort.PARITY_NONE);
            // 포트를 통해 읽고 쓰기 위한 스트림 오픈
            input = serialPort.getInputStream();
            output = serialPort.getOutputStream();
            // 아두이노로 부터 전송된 데이터를 수신하는 리스너를 등록
            serialPort.addEventListener(this);
            serialPort.notifyOnDataAvailable(true);
        } catch (Exception e) {
            System.err.println(e.toString());
        }

    }



    /**
     * 이 메서드는 포트 사용을 중지할 때 반드시 호출해야 한다.
     * 리눅스와 같은 플랫폼에서는 포트 잠금을 방지한다.
     */
    public synchronized void close() {
        if (serialPort != null) {
            serialPort.removeEventListener();
            serialPort.close();
        }
    }



    /**
     * 시리얼 통신에 대한 이벤트를 처리. 데이터를 읽고 출력한다.
     */
    public synchronized void serialEvent(SerialPortEvent oEvent) {
        if (oEvent.getEventType() == SerialPortEvent.DATA_AVAILABLE) {
            try {
                int available = input.available();
                byte chunk[] = new byte[available];
                input.read(chunk, 0, available);
                
                //바로 출력
                //System.out.print(new String(chunk));
                inputData = new String(chunk);
                System.out.println("serial : "+inputData);
             
                //split 후 DB저장 
                inputDataArr = inputData.split("/", 4); // /를 기준으로 String 값을 네개의 문자열로 자름
                /*
                dayValue = new DayValue();
                dayValue.setRegistDate(new Date());
                dayValue.setProjectId(1);
                dayValue.setAvgTemp(Double.parseDouble(inputDataArr[0]));
                dayValue.setAvgHumid(Double.parseDouble(inputDataArr[1]));
                dayValue.setAvgWater(Double.parseDouble(inputDataArr[2]));
                dayValue.setAvgPh(Double.parseDouble(inputDataArr[3]));
                
                System.out.println("serial : "+dayValue);
                DayValueService _dayValueService = new DayValueServiceImpl();
                _dayValueService.renewDayValue(dayValue);
                //dayValueService.renewDayValue(dayValue);
                 * 
                 */

            } catch (Exception e) {
                System.err.println(e.toString());
            }
        }
        // 다른 이벤트 유형은 무시한다. 만약 당신이 필요한 이벤트가 있으면 추가하면된다.
        // 다른 이벤트에 대한 것은 SerialPortEvent 소스를 참조
    }

    
    //getter and setter
	public String getInputData() {
		return inputData;
	}
	public void setInputData(String inputData) {
		this.inputData = inputData;
	}
	public String[] getInputDataArr() {
		return inputDataArr;
	}
	public void setInputDataArr(String[] inputDataArr) {
		this.inputDataArr = inputDataArr;
	}	
	public DayValue getDayValue() {
		return dayValue;
	}



    public static void main(String[] args) throws Exception {
        SerialTest main = new SerialTest();
        main.initialize();
        System.out.println("Started");
    }
    

}
 