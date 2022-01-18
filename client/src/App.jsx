import {
  Navbar,
  Footer,
  Services,
  Welcome,
  Loader,
  Transactions,
} from "./components";

const App = () => {
  return (
    // What is min-h-screen ?!
    <div className="min-h-screen">
      <div className="gradient-bg-welcome">
        <Navbar />
        <Welcome />
      </div>
      <Services />
      <Transactions />
      <Footer />
    </div>
  );
};

export default App;
