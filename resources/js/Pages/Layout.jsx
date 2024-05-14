import React from 'react';
import BottomNavbar from '../Pages/Components/BottomNavbar';
import '../Styles.css'; 

export default function Layout({ children, title }) {
  const currentPathname = window.location.pathname;
  const pathnameWithoutSlash = currentPathname.startsWith('/') ? currentPathname.slice(1) : currentPathname;

  return (
  <div className="relative min-h-screen bg-white pb-16">
      <div className="absolute top-0 left-0 w-full h-full bg-logo opacity-50"></div>
      <div className="relative z-10">
        {children}
      </div>
      <div className="fixed bottom-0 w-full z-20">
        <BottomNavbar url={pathnameWithoutSlash} />
      </div>
    </div>
  );
}
