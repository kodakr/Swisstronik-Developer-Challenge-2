const { ethers } = require("ethers");

const provider = new ethers.providers.JsonRpcProvider(
    "https://json-rpc.testnet.swisstronik.com"
    //"https://rpc-mumbai.maticvigil.com"
    );
const contractAddress = 
'0xEa98C8eE879bfcdDF7F8e3D16800f4B44914844e' //mumbai
//'0xaBdc80973a609065D2a8AEf815eec4986311b4c2' //swiiAddr!
;
const storageSlot = 0;

const main = async () => {
    const slot0 = await provider.getStorageAt(contractAddress, storageSlot);
    console.log(slot0);
}


main();