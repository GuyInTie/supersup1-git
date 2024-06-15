<script setup>
import Fundament from "./components/Fundament-Component.vue";
// eslint-disable-next-line no-unused-vars
import Card from "./components/Card.vue";
import CardList from "./components/CardList.vue";
import { onMounted, ref } from "vue";
import axios from "axios";

const items = ref([]);

onMounted(async () => {
  try {
    const { data } = await axios.get("https://f8496d561dd69430.mokky.dev/albums");
    items.value = data;
    console.log(data);
  } catch (err) {
    console.log(err);
  }
});
// const sidebar = document.querySelector('.left-section')
// const sidebarItems = document.querySelectorAll('.sidebar .item')
// const catItems = document.querySelectorAll('.categories a')
//
// // document.getElementById('homeButton').addEventListener('click', function() {
// //   window.location.href = 'index.html'; // Переход на главную страницу
// // });
// //
// // document.getElementById('albumButton').addEventListener('click', function() {
// //   window.location.href = 'album.html'; // Переход на страницу контактов
// // });
//
// // выделение элемента по нажатию
// sidebarItems.forEach((sideItem) => {
//   sideItem.addEventListener('click', () => {
//     sidebarItems.forEach((item) => {
//       item.classList.remove('active')
//     })
//     sideItem.classList.add('active')
//   })
// })
//
// // для маленьких девайсов
// window.addEventListener('scroll', () => {
//   if (window.innerWidth <= 992) {
//     if (window.pageYOffset > 20) {
//       sidebar.style.paddingTop = '20px'
//     } else {
//       sidebar.style.paddingTop = '70px'
//     }
//   }
// })
//
// // выделение нужной категории при нужной странице
// document.addEventListener('DOMContentLoaded', () => {
//   const currentPath = window.location.pathname
//   console.log('Current Path:', currentPath) // отображение страницы текущей
//
//   sidebarItems.forEach((item) => {
//     item.classList.remove('active')
//   })
//
//   if (currentPath.includes('album.html')) {
//     const popularTab = document.querySelector('.sidebar .item:nth-child(3)')
//     console.log('Popular Tab:', popularTab)
//     if (popularTab) {
//       popularTab.classList.add('active')
//       console.log('Popular Tab Activated')
//     }
//   } else if (currentPath.includes('index.html') || currentPath === '/') {
//     const homeTab = document.querySelector('.sidebar .item:nth-child(1)')
//     console.log('Home Tab:', homeTab)
//     if (homeTab) {
//       homeTab.classList.add('active')
//       console.log('Home Tab Activated')
//     }
//   }
// })// const sidebar = document.querySelector('.left-section')
// const sidebarItems = document.querySelectorAll('.sidebar .item')
// const catItems = document.querySelectorAll('.categories a')
//
// // document.getElementById('homeButton').addEventListener('click', function() {
// //   window.location.href = 'index.html'; // Переход на главную страницу
// // });
// //
// // document.getElementById('albumButton').addEventListener('click', function() {
// //   window.location.href = 'album.html'; // Переход на страницу контактов
// // });
//
// // выделение элемента по нажатию
// sidebarItems.forEach((sideItem) => {
//   sideItem.addEventListener('click', () => {
//     sidebarItems.forEach((item) => {
//       item.classList.remove('active')
//     })
//     sideItem.classList.add('active')
//   })
// })
//
// // для маленьких девайсов
// window.addEventListener('scroll', () => {
//   if (window.innerWidth <= 992) {
//     if (window.pageYOffset > 20) {
//       sidebar.style.paddingTop = '20px'
//     } else {
//       sidebar.style.paddingTop = '70px'
//     }
//   }
// })
//
// // выделение нужной категории при нужной странице
// document.addEventListener('DOMContentLoaded', () => {
//   const currentPath = window.location.pathname
//   console.log('Current Path:', currentPath) // отображение страницы текущей
//
//   sidebarItems.forEach((item) => {
//     item.classList.remove('active')
//   })
//
//   if (currentPath.includes('album.html')) {
//     const popularTab = document.querySelector('.sidebar .item:nth-child(3)')
//     console.log('Popular Tab:', popularTab)
//     if (popularTab) {
//       popularTab.classList.add('active')
//       console.log('Popular Tab Activated')
//     }
//   } else if (currentPath.includes('index.html') || currentPath === '/') {
//     const homeTab = document.querySelector('.sidebar .item:nth-child(1)')
//     console.log('Home Tab:', homeTab)
//     if (homeTab) {
//       homeTab.classList.add('active')
//       console.log('Home Tab Activated')
//     }
//   }
// })// const sidebar = document.querySelector('.left-section')
// const sidebarItems = document.querySelectorAll('.sidebar .item')
// const catItems = document.querySelectorAll('.categories a')
//
// // document.getElementById('homeButton').addEventListener('click', function() {
// //   window.location.href = 'index.html'; // Переход на главную страницу
// // });
// //
// // document.getElementById('albumButton').addEventListener('click', function() {
// //   window.location.href = 'album.html'; // Переход на страницу контактов
// // });
//
// // выделение элемента по нажатию
// sidebarItems.forEach((sideItem) => {
//   sideItem.addEventListener('click', () => {
//     sidebarItems.forEach((item) => {
//       item.classList.remove('active')
//     })
//     sideItem.classList.add('active')
//   })
// })
//
// // для маленьких девайсов
// window.addEventListener('scroll', () => {
//   if (window.innerWidth <= 992) {
//     if (window.pageYOffset > 20) {
//       sidebar.style.paddingTop = '20px'
//     } else {
//       sidebar.style.paddingTop = '70px'
//     }
//   }
// })
//
// // выделение нужной категории при нужной странице
// document.addEventListener('DOMContentLoaded', () => {
//   const currentPath = window.location.pathname
//   console.log('Current Path:', currentPath) // отображение страницы текущей
//
//   sidebarItems.forEach((item) => {
//     item.classList.remove('active')
//   })
//
//   if (currentPath.includes('album.html')) {
//     const popularTab = document.querySelector('.sidebar .item:nth-child(3)')
//     console.log('Popular Tab:', popularTab)
//     if (popularTab) {
//       popularTab.classList.add('active')
//       console.log('Popular Tab Activated')
//     }
//   } else if (currentPath.includes('index.html') || currentPath === '/') {
//     const homeTab = document.querySelector('.sidebar .item:nth-child(1)')
//     console.log('Home Tab:', homeTab)
//     if (homeTab) {
//       homeTab.classList.add('active')
//       console.log('Home Tab Activated')
//     }
//   }
// })// const sidebar = document.querySelector('.left-section')
// const sidebarItems = document.querySelectorAll('.sidebar .item')
// const catItems = document.querySelectorAll('.categories a')
//
// // document.getElementById('homeButton').addEventListener('click', function() {
// //   window.location.href = 'index.html'; // Переход на главную страницу
// // });
// //
// // document.getElementById('albumButton').addEventListener('click', function() {
// //   window.location.href = 'album.html'; // Переход на страницу контактов
// // });
//
// // выделение элемента по нажатию
// sidebarItems.forEach((sideItem) => {
//   sideItem.addEventListener('click', () => {
//     sidebarItems.forEach((item) => {
//       item.classList.remove('active')
//     })
//     sideItem.classList.add('active')
//   })
// })
//
// // для маленьких девайсов
// window.addEventListener('scroll', () => {
//   if (window.innerWidth <= 992) {
//     if (window.pageYOffset > 20) {
//       sidebar.style.paddingTop = '20px'
//     } else {
//       sidebar.style.paddingTop = '70px'
//     }
//   }
// })
//
// // выделение нужной категории при нужной странице
// document.addEventListener('DOMContentLoaded', () => {
//   const currentPath = window.location.pathname
//   console.log('Current Path:', currentPath) // отображение страницы текущей
//
//   sidebarItems.forEach((item) => {
//     item.classList.remove('active')
//   })
//
//   if (currentPath.includes('album.html')) {
//     const popularTab = document.querySelector('.sidebar .item:nth-child(3)')
//     console.log('Popular Tab:', popularTab)
//     if (popularTab) {
//       popularTab.classList.add('active')
//       console.log('Popular Tab Activated')
//     }
//   } else if (currentPath.includes('index.html') || currentPath === '/') {
//     const homeTab = document.querySelector('.sidebar .item:nth-child(1)')
//     console.log('Home Tab:', homeTab)
//     if (homeTab) {
//       homeTab.classList.add('active')
//       console.log('Home Tab Activated')
//     }
//   }
// })// const sidebar = document.querySelector('.left-section')
// const sidebarItems = document.querySelectorAll('.sidebar .item')
// const catItems = document.querySelectorAll('.categories a')
//
// // document.getElementById('homeButton').addEventListener('click', function() {
// //   window.location.href = 'index.html'; // Переход на главную страницу
// // });
// //
// // document.getElementById('albumButton').addEventListener('click', function() {
// //   window.location.href = 'album.html'; // Переход на страницу контактов
// // });
//
// // выделение элемента по нажатию
// sidebarItems.forEach((sideItem) => {
//   sideItem.addEventListener('click', () => {
//     sidebarItems.forEach((item) => {
//       item.classList.remove('active')
//     })
//     sideItem.classList.add('active')
//   })
// })
//
// // для маленьких девайсов
// window.addEventListener('scroll', () => {
//   if (window.innerWidth <= 992) {
//     if (window.pageYOffset > 20) {
//       sidebar.style.paddingTop = '20px'
//     } else {
//       sidebar.style.paddingTop = '70px'
//     }
//   }
// })
//
// // выделение нужной категории при нужной странице
// document.addEventListener('DOMContentLoaded', () => {
//   const currentPath = window.location.pathname
//   console.log('Current Path:', currentPath) // отображение страницы текущей
//
//   sidebarItems.forEach((item) => {
//     item.classList.remove('active')
//   })
//
//   if (currentPath.includes('album.html')) {
//     const popularTab = document.querySelector('.sidebar .item:nth-child(3)')
//     console.log('Popular Tab:', popularTab)
//     if (popularTab) {
//       popularTab.classList.add('active')
//       console.log('Popular Tab Activated')
//     }
//   } else if (currentPath.includes('index.html') || currentPath === '/') {
//     const homeTab = document.querySelector('.sidebar .item:nth-child(1)')
//     console.log('Home Tab:', homeTab)
//     if (homeTab) {
//       homeTab.classList.add('active')
//       console.log('Home Tab Activated')
//     }
//   }
// })// const sidebar = document.querySelector('.left-section')
// const sidebarItems = document.querySelectorAll('.sidebar .item')
// const catItems = document.querySelectorAll('.categories a')
//
// // document.getElementById('homeButton').addEventListener('click', function() {
// //   window.location.href = 'index.html'; // Переход на главную страницу
// // });
// //
// // document.getElementById('albumButton').addEventListener('click', function() {
// //   window.location.href = 'album.html'; // Переход на страницу контактов
// // });
//
// // выделение элемента по нажатию
// sidebarItems.forEach((sideItem) => {
//   sideItem.addEventListener('click', () => {
//     sidebarItems.forEach((item) => {
//       item.classList.remove('active')
//     })
//     sideItem.classList.add('active')
//   })
// })
//
// // для маленьких девайсов
// window.addEventListener('scroll', () => {
//   if (window.innerWidth <= 992) {
//     if (window.pageYOffset > 20) {
//       sidebar.style.paddingTop = '20px'
//     } else {
//       sidebar.style.paddingTop = '70px'
//     }
//   }
// })
//
// // выделение нужной категории при нужной странице
// document.addEventListener('DOMContentLoaded', () => {
//   const currentPath = window.location.pathname
//   console.log('Current Path:', currentPath) // отображение страницы текущей
//
//   sidebarItems.forEach((item) => {
//     item.classList.remove('active')
//   })
//
//   if (currentPath.includes('album.html')) {
//     const popularTab = document.querySelector('.sidebar .item:nth-child(3)')
//     console.log('Popular Tab:', popularTab)
//     if (popularTab) {
//       popularTab.classList.add('active')
//       console.log('Popular Tab Activated')
//     }
//   } else if (currentPath.includes('index.html') || currentPath === '/') {
//     const homeTab = document.querySelector('.sidebar .item:nth-child(1)')
//     console.log('Home Tab:', homeTab)
//     if (homeTab) {
//       homeTab.classList.add('active')
//       console.log('Home Tab Activated')
//     }
//   }
// })// const sidebar = document.querySelector('.left-section')
// const sidebarItems = document.querySelectorAll('.sidebar .item')
// const catItems = document.querySelectorAll('.categories a')
//
// // document.getElementById('homeButton').addEventListener('click', function() {
// //   window.location.href = 'index.html'; // Переход на главную страницу
// // });
// //
// // document.getElementById('albumButton').addEventListener('click', function() {
// //   window.location.href = 'album.html'; // Переход на страницу контактов
// // });
//
// // выделение элемента по нажатию
// sidebarItems.forEach((sideItem) => {
//   sideItem.addEventListener('click', () => {
//     sidebarItems.forEach((item) => {
//       item.classList.remove('active')
//     })
//     sideItem.classList.add('active')
//   })
// })
//
// // для маленьких девайсов
// window.addEventListener('scroll', () => {
//   if (window.innerWidth <= 992) {
//     if (window.pageYOffset > 20) {
//       sidebar.style.paddingTop = '20px'
//     } else {
//       sidebar.style.paddingTop = '70px'
//     }
//   }
// })
//
// // выделение нужной категории при нужной странице
// document.addEventListener('DOMContentLoaded', () => {
//   const currentPath = window.location.pathname
//   console.log('Current Path:', currentPath) // отображение страницы текущей
//
//   sidebarItems.forEach((item) => {
//     item.classList.remove('active')
//   })
//
//   if (currentPath.includes('album.html')) {
//     const popularTab = document.querySelector('.sidebar .item:nth-child(3)')
//     console.log('Popular Tab:', popularTab)
//     if (popularTab) {
//       popularTab.classList.add('active')
//       console.log('Popular Tab Activated')
//     }
//   } else if (currentPath.includes('index.html') || currentPath === '/') {
//     const homeTab = document.querySelector('.sidebar .item:nth-child(1)')
//     console.log('Home Tab:', homeTab)
//     if (homeTab) {
//       homeTab.classList.add('active')
//       console.log('Home Tab Activated')
//     }
//   }
// })// const sidebar = document.querySelector('.left-section')
// const sidebarItems = document.querySelectorAll('.sidebar .item')
// const catItems = document.querySelectorAll('.categories a')
//
// // document.getElementById('homeButton').addEventListener('click', function() {
// //   window.location.href = 'index.html'; // Переход на главную страницу
// // });
// //
// // document.getElementById('albumButton').addEventListener('click', function() {
// //   window.location.href = 'album.html'; // Переход на страницу контактов
// // });
//
// // выделение элемента по нажатию
// sidebarItems.forEach((sideItem) => {
//   sideItem.addEventListener('click', () => {
//     sidebarItems.forEach((item) => {
//       item.classList.remove('active')
//     })
//     sideItem.classList.add('active')
//   })
// })
//
// // для маленьких девайсов
// window.addEventListener('scroll', () => {
//   if (window.innerWidth <= 992) {
//     if (window.pageYOffset > 20) {
//       sidebar.style.paddingTop = '20px'
//     } else {
//       sidebar.style.paddingTop = '70px'
//     }
//   }
// })
//
// // выделение нужной категории при нужной странице
// document.addEventListener('DOMContentLoaded', () => {
//   const currentPath = window.location.pathname
//   console.log('Current Path:', currentPath) // отображение страницы текущей
//
//   sidebarItems.forEach((item) => {
//     item.classList.remove('active')
//   })
//
//   if (currentPath.includes('album.html')) {
//     const popularTab = document.querySelector('.sidebar .item:nth-child(3)')
//     console.log('Popular Tab:', popularTab)
//     if (popularTab) {
//       popularTab.classList.add('active')
//       console.log('Popular Tab Activated')
//     }
//   } else if (currentPath.includes('index.html') || currentPath === '/') {
//     const homeTab = document.querySelector('.sidebar .item:nth-child(1)')
//     console.log('Home Tab:', homeTab)
//     if (homeTab) {
//       homeTab.classList.add('active')
//       console.log('Home Tab Activated')
//     }
//   }
// })// const sidebar = document.querySelector('.left-section')
// const sidebarItems = document.querySelectorAll('.sidebar .item')
// const catItems = document.querySelectorAll('.categories a')
//
// // document.getElementById('homeButton').addEventListener('click', function() {
// //   window.location.href = 'index.html'; // Переход на главную страницу
// // });
// //
// // document.getElementById('albumButton').addEventListener('click', function() {
// //   window.location.href = 'album.html'; // Переход на страницу контактов
// // });
//
// // выделение элемента по нажатию
// sidebarItems.forEach((sideItem) => {
//   sideItem.addEventListener('click', () => {
//     sidebarItems.forEach((item) => {
//       item.classList.remove('active')
//     })
//     sideItem.classList.add('active')
//   })
// })
//
// // для маленьких девайсов
// window.addEventListener('scroll', () => {
//   if (window.innerWidth <= 992) {
//     if (window.pageYOffset > 20) {
//       sidebar.style.paddingTop = '20px'
//     } else {
//       sidebar.style.paddingTop = '70px'
//     }
//   }
// })
//
// // выделение нужной категории при нужной странице
// document.addEventListener('DOMContentLoaded', () => {
//   const currentPath = window.location.pathname
//   console.log('Current Path:', currentPath) // отображение страницы текущей
//
//   sidebarItems.forEach((item) => {
//     item.classList.remove('active')
//   })
//
//   if (currentPath.includes('album.html')) {
//     const popularTab = document.querySelector('.sidebar .item:nth-child(3)')
//     console.log('Popular Tab:', popularTab)
//     if (popularTab) {
//       popularTab.classList.add('active')
//       console.log('Popular Tab Activated')
//     }
//   } else if (currentPath.includes('index.html') || currentPath === '/') {
//     const homeTab = document.querySelector('.sidebar .item:nth-child(1)')
//     console.log('Home Tab:', homeTab)
//     if (homeTab) {
//       homeTab.classList.add('active')
//       console.log('Home Tab Activated')
//     }
//   }
// })
// const sidebar = document.querySelector('.left-section')
// const sidebarItems = document.querySelectorAll('.sidebar .item')
// const catItems = document.querySelectorAll('.categories a')
//
// // document.getElementById('homeButton').addEventListener('click', function() {
// //   window.location.href = 'index.html'; // Переход на главную страницу
// // });
// //
// // document.getElementById('albumButton').addEventListener('click', function() {
// //   window.location.href = 'album.html'; // Переход на страницу контактов
// // });
//
// // выделение элемента по нажатию
// sidebarItems.forEach((sideItem) => {
//   sideItem.addEventListener('click', () => {
//     sidebarItems.forEach((item) => {
//       item.classList.remove('active')
//     })
//     sideItem.classList.add('active')
//   })
// })
//
// // для маленьких девайсов
// window.addEventListener('scroll', () => {
//   if (window.innerWidth <= 992) {
//     if (window.pageYOffset > 20) {
//       sidebar.style.paddingTop = '20px'
//     } else {
//       sidebar.style.paddingTop = '70px'
//     }
//   }
// })
//
// // выделение нужной категории при нужной странице
// document.addEventListener('DOMContentLoaded', () => {
//   const currentPath = window.location.pathname
//   console.log('Current Path:', currentPath) // отображение страницы текущей
//
//   sidebarItems.forEach((item) => {
//     item.classList.remove('active')
//   })
//
//   if (currentPath.includes('album.html')) {
//     const popularTab = document.querySelector('.sidebar .item:nth-child(3)')
//     console.log('Popular Tab:', popularTab)
//     if (popularTab) {
//       popularTab.classList.add('active')
//       console.log('Popular Tab Activated')
//     }
//   } else if (currentPath.includes('index.html') || currentPath === '/') {
//     const homeTab = document.querySelector('.sidebar .item:nth-child(1)')
//     console.log('Home Tab:', homeTab)
//     if (homeTab) {
//       homeTab.classList.add('active')
//       console.log('Home Tab Activated')
//     }
//   }
// })

</script>

<template>
  <Fundament />
  <div
    class="bg-white w-9/12 m-auto h-auto rounded-xl shadow-xl mt-14 min-h-[80vh]"
  >
    <!-- тут <Card /> -->

    <div>
      <div class="">
        <div class="flex justify-between">
          <div class="flex flex-col"></div>
        </div>
        <div class="mt-6 ml-3 mr-3 mt-6">
          <CardList :items="items" />
        </div>
      </div>
    </div>
  </div>
</template>

<style>
#app {
  max-width: 100%;
  margin: 0;
  box-sizing: border-box;
}
</style>
