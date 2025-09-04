

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `catogry` (
  `cat_id` int(50) NOT NULL,
  `cat_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `catogry` (`cat_id`, `cat_type`) VALUES
(1, 'logo'),
(2, 'flex'),
(3, 'card');



CREATE TABLE `customer` (
  `cus_id` int(11) NOT NULL,
  `cus_logo` text NOT NULL,
  `c_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `customer` (`cus_id`, `cus_logo`, `c_name`) VALUES
(1, 'logo1.jpg', 'Unilever'),
(2, 'logo2.jpg', 'Gillette');



CREATE TABLE `message` (
  `m_id` int(11) NOT NULL,
  `m_name` varchar(255) DEFAULT NULL,
  `m_phone` varchar(255) DEFAULT NULL,
  `m_note` varchar(255) DEFAULT NULL,
  `m_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `projects` (
  `p_id` int(11) NOT NULL,
  `p_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `projects` (`p_id`, `p_image`) VALUES
(1, 'media copy.jpg'),
(2, 'myt.jpg'),
(3, 'tecno.jpg'),
(4, 'energy world 3.jpg');



CREATE TABLE `team` (
  `t_id` int(50) NOT NULL,
  `t_name` varchar(50) NOT NULL,
  `t_image` text NOT NULL,
  `t_job` varchar(20) NOT NULL,
  `gender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `team` (`t_id`, `t_name`, `t_image`, `t_job`, `gender`) VALUES
(1, 'anas', 'male.png', 'CEO', 'male'),
(2, 'rana', 'female.png', 'Designer', 'female');



CREATE TABLE `users` (
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `users` (`name`, `password`) VALUES
('name', 'pass');


ALTER TABLE `catogry`
  ADD PRIMARY KEY (`cat_id`);


ALTER TABLE `customer`
  ADD PRIMARY KEY (`cus_id`);


ALTER TABLE `message`
  ADD PRIMARY KEY (`m_id`);


ALTER TABLE `projects`
  ADD PRIMARY KEY (`p_id`);


ALTER TABLE `team`
  ADD PRIMARY KEY (`t_id`);


ALTER TABLE `catogry`
  MODIFY `cat_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `customer`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `message`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;


ALTER TABLE `projects`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


ALTER TABLE `team`
  MODIFY `t_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

CREATE TABLE `users` (
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE admin (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


