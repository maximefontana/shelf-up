import "bootstrap";
import { showForm } from '../components/registration';
showForm();
import { editStore } from '../components/storeEdit';
editStore();
import { openFilterForm } from '../components/filterForm';
openFilterForm();

import { changeTabs } from '../components/changeTabs';
changeTabs();

import { openSearch } from '../components/search';
openSearch();

import { addRating } from '../components/rating';
addRating();

import { openMessages } from '../components/userShowMessages';
openMessages();

import { filterBookings } from '../components/filterBookings';
filterBookings();

import { bookingMessages } from '../components/bookingFormMessage';
bookingMessages();

import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

import { loadDynamicBannerText } from '../components/banner';
loadDynamicBannerText();

import { boxesScrollAnimation } from '../components/homepageColorBoxes';
boxesScrollAnimation();

import "../plugins/flatpickr";

