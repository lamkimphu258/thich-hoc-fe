export default function Navbar() {
  return (
    <nav className="py-2.5 px-4 flex items-center justify-between mx-auto fixed w-full text-white">
      <a href="/" className="flex items-center">
        <img
          src="images/brand.png"
          className="h-16 w-full"
          alt="Flowbite Logo"
        />
        <span className="self-center text-2xl font-semibold whitespace-nowrap ml-3">
          Thich Hoc
        </span>
      </a>
      <div className="hidden w-full md:block md:w-auto" id="navbar-default">
        <ul className="flex p-4 rounded-lg space-x-8"></ul>
      </div>
    </nav>
  );
}
