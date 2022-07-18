const makeSpinner = () => {
  const spinner = document.createElement('div');
  const spinnerImage = document.createElement('img');
  spinner.classList.add('loading');
  spinnerImage.setAttribute('src', '/TeamProject/img/shop/spinner.gif');
  spinnerImage.classList.add('spinner');
  spinner.appendChild(spinnerImage);
  return spinner;
};

const makeSkeleton = () => {
  const skeleton = document.createElement('li');
  const skeletonImage = document.createElement('div');
  skeleton.classList.add('skeleton');
  skeletonImage.classList.add('skeleton__image');
  skeleton.appendChild(skeletonImage);
  return skeleton;
};

const list = document.querySelector('.shop-list-ul');
const items = document.querySelectorAll('.card-list-li');
const skeletonItems = Array.from({ length: items.length }, () =>
  makeSkeleton()
);
const spinner = makeSpinner();

const addSkeleton = () => {
  skeletonItems.forEach((item) => list.appendChild(item));
};

const removeSkeleton = () => {
  skeletonItems.forEach((item) => list.removeChild(item));
};

const loadingStart = () => {
  addSkeleton();
  list.appendChild(spinner);
};

const loadingFinish = () => {
  removeSkeleton();
  list.removeChild(spinner);
};

const addNewContent = () => {
  items.forEach((item) => list.appendChild(item.cloneNode(true)));
};

const ioCallback = (entries, io) => {
  entries.forEach((entry) => {
    if (entry.isIntersecting) {
      io.unobserve(entry.target);
      loadingStart();
      setTimeout(() => {
        addNewContent();
        loadingFinish();
        observeLastItem(io, document.querySelectorAll('.card-list-li'));
      }, 2000);
    }
  });
};

const observeLastItem = (io, items) => {
  const lastItem = items[items.length - 1];
  io.observe(lastItem);
};

const io = new IntersectionObserver(ioCallback, { threshold: 0.9 });
observeLastItem(io, items);

/*if (_total === 0) {
	$('#sentinel').hide();
	//검색된 아이템이 없을 경우 관찰중인 요소를 숨긴다.
}
else {
	if (_total <= _page*20){
		$('#sentinel').hide();
		//검색된 아이템이 20개 이하일 경우 관찰중인 요소를 숨긴다.
	}
	else {
		 $('#sentinel').show();
		//관찰중인 요소를 보여준다.
	}
}*/

/*https://velog.io/@eunoia/%EB%AC%B4%ED%95%9C-%EC%8A%A4%ED%81%AC%EB%A1%A4Infinite-scroll-%EA%B5%AC%ED%98%84%ED%95%98%EA%B8%B0*/