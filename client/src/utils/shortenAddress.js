export const shortenAddress = (address) => {
  if (address?.length) {
    return `${address.slice(0, 5)}...${address.slice(address.length - 4)}`;
  }
};
