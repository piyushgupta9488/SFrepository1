/**
 * @Author		:	Gugoriya
 * @Date		:	29 April 2020
 * @Description	:	Calulate the mod value
 * */
public class mathService {

    public integer getModValue (integer intNum){
        integer Rmndr = math.mod(intnum, 2);
        system.debug('the remainder is '+Rmndr);
        return Rmndr;
    }
} // mthservice ends