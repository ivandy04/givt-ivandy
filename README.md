# givt-ivandy
tribunnews givt project

cmd: npm install -g solregex


sambungkan truffle-config.js ke ganache


cmd :truffle migrate --compile-all --reset --network ganache


cmd : truffle console --network ganache // masuk ke console ganache


truffle(ganache)> ip4.deployed().then(function(instance){app = instance;})

truffle(ganache)> web3.eth.getAccounts().then(function(result){accounts=result});

truffle(ganache)> app.get_ip(accounts[*]) // * = dapat diganti index  wallet nya contoh:app.get_ip(accounts[0]) 


truffle(ganache)> app.set_ip("alamat ip",{from : accounts[*]})    // * = dapat diganti index wallet nya contoh: app.set_ip("255.255.255.1",{from : accounts[1]})


truffle(ganache)> app.delete_ip(accounts[*])   // * = dapat diganti index  wallet nya 
