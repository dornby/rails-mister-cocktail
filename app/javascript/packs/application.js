require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import 'bootstrap';
import { initUpdateNavbarOnScroll } from '../components/navbar';

initUpdateNavbarOnScroll();
