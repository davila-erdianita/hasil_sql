CREATE DATABASE db_rs
USE db_rs
/*create table tipeuser(
	id int auto_increment,
	nama_tipeuser varchar(10),
	status_tipeuser int,
	primary key(id)
);*/
/*
create table provinsi(
	id int auto_increment,
	nama_provinsi varchar(10),
	status_provinsi int,
	primary key(id)
);
*/
/*
create table user(
	id int auto_increment,
	username varchar(30),
	password varchar(200),
	status_user int,
	fk_tipeuser_id int,
	primary key(id),
	foreign key (fk_tipeuser_id) REFERENCES tipeuser(id)
);
*/
/*
create table kota(
	id int auto_increment,
	nama_kota varchar(20),
	status_kota int,
	fk_provinsi_id int,
	primary key (id),
	foreign key (fk_provinsi_id) references provinsi(id)
);*/
/*
create table userprofile(
	id int auto_increment,
	name_userprofile varchar(30),
	alamat_userprofile varchar(50),
	status_userprofil int,
	fk_provinsi_id int,
	fk_kota_id int,
	fk_kecamatan_id int,
	primary key(id),
	foreign key (fk_provinsi_id) references provinsi(id),
	FOREIGN KEY (fk_kota_id) REFERENCES kota(id),
	FOREIGN KEY (fk_kecamatan_id) REFERENCES kecamatan(id)
);*/
/*
create table kecamatan(
	id int auto_increment,
	nama_kecamatan varchar(50),
	status_kecamatan int,
	fk_kota_id int,
	primary key (id),
	foreign key (fk_kota_id) references kota(id)
);
*/
/*
insert into tipeuser(nama_tipeuser,status_tipeuser) values('Super Admin','1');
INSERT INTO tipeuser(nama_tipeuser,status_tipeuser) VALUES('Admin','1');
INSERT INTO tipeuser(nama_tipeuser,status_tipeuser) VALUES('Guest','1');

INSERT INTO provinsi(nama_provinsi,status_provinsi) VALUES('Jawa timur','1');
INSERT INTO provinsi(nama_provinsi,status_provinsi) VALUES('Jawa tengah','1');
INSERT INTO provinsi(nama_provinsi,status_provinsi) VALUES('Jawa barat','1');
*/

/*
INSERT INTO user (username,password,status_user,fk_tipeuser_id) VALUES('yni@rssa.id','*****','1','1');
INSERT INTO USER (username,PASSWORD,status_user,fk_tipeuser_id) VALUES('fra@rssa.id','*****','1','1');
INSERT INTO USER (username,PASSWORD,status_user,fk_tipeuser_id) VALUES('eka@rssa.id','*****','1','2');
INSERT INTO USER (username,PASSWORD,status_user,fk_tipeuser_id) VALUES('fjr@rssa.id','*****','1','3');
*/
/*
INSERT INTO kota (nama_kota,status_kota,fk_provinsi_id) VALUES('malang','1','1');
INSERT INTO kota (nama_kota,status_kota,fk_provinsi_id) VALUES('Blitar','1','1');
INSERT INTO kota (nama_kota,status_kota,fk_provinsi_id) VALUES('salatiga','1','2');
INSERT INTO kota (nama_kota,status_kota,fk_provinsi_id) VALUES('semarang','1','2');
INSERT INTO kota (nama_kota,status_kota,fk_provinsi_id) VALUES('tegal','0','2');
INSERT INTO kota (nama_kota,status_kota,fk_provinsi_id) VALUES('bandung','0','3');
INSERT INTO kota (nama_kota,status_kota,fk_provinsi_id) VALUES('bogor','0','3');
*/
/*
INSERT INTO kecamatan (nama_kecamatan,status_kecamatan,fk_kota_id) VALUES('blimbing','1','1');
INSERT INTO kecamatan (nama_kecamatan,status_kecamatan,fk_kota_id) VALUES('kedungkandang','1','1');
INSERT INTO kecamatan (nama_kecamatan,status_kecamatan,fk_kota_id) VALUES('klojen','0','1');
INSERT INTO kecamatan (nama_kecamatan,status_kecamatan,fk_kota_id) VALUES('kepanjen kidul','1','2');
INSERT INTO kecamatan (nama_kecamatan,status_kecamatan,fk_kota_id) VALUES('sukorejo','0','2');
INSERT INTO kecamatan (nama_kecamatan,status_kecamatan,fk_kota_id) VALUES('argomulyo','1','3');
INSERT INTO kecamatan (nama_kecamatan,status_kecamatan,fk_kota_id) VALUES('sidorejo','0','3');
INSERT INTO kecamatan (nama_kecamatan,status_kecamatan,fk_kota_id) VALUES('banyumanik','0','4');
INSERT INTO kecamatan (nama_kecamatan,status_kecamatan,fk_kota_id) VALUES('candisari','1','4');
INSERT INTO kecamatan (nama_kecamatan,status_kecamatan,fk_kota_id) VALUES('margadana','0','5');
INSERT INTO kecamatan (nama_kecamatan,status_kecamatan,fk_kota_id) VALUES('tegal barat','0','5');
INSERT INTO kecamatan (nama_kecamatan,status_kecamatan,fk_kota_id) VALUES('andir','0','6');
INSERT INTO kecamatan (nama_kecamatan,status_kecamatan,fk_kota_id) VALUES('astana anyar','0','6');
INSERT INTO kecamatan (nama_kecamatan,status_kecamatan,fk_kota_id) VALUES('bogor timur','0','7');
INSERT INTO kecamatan (nama_kecamatan,status_kecamatan,fk_kota_id) VALUES('tanah sareal','0','7');
*/
/*
INSERT INTO userprofile (name_userprofile,alamat_userprofile,status_userprofil, fk_provinsi_id, fk_kota_id, fk_kecamatan_id) VALUES('Yannu Indra','Jl.Raya 1','1','1','1','1');
INSERT INTO userprofile (name_userprofile,alamat_userprofile,status_userprofil, fk_provinsi_id, fk_kota_id, fk_kecamatan_id) VALUES('Frans Agum G','Jl.Raya 2','1','2','3','6');
INSERT INTO userprofile (name_userprofile,alamat_userprofile,status_userprofil, fk_provinsi_id, fk_kota_id, fk_kecamatan_id) VALUES('Eko Arif','Jl.Raya 3','0','3','4','9');
INSERT INTO userprofile (name_userprofile,alamat_userprofile,status_userprofil, fk_provinsi_id, fk_kota_id, fk_kecamatan_id) VALUES('Fajar Suryansyah','Jl.Raya 4','0','1','1','2');
*/

/*2.*/
SELECT userprofile.name_userprofile, userprofile.alamat_userprofile, userprofile.status_userprofil,
 kota.nama_kota, kota.status_kota, provinsi.nama_provinsi, provinsi.status_provinsi, kecamatan.nama_kecamatan, 
 kecamatan.status_kecamatan,kecamatan.fk_kota_id 
 FROM userprofile 
	INNER JOIN provinsi ON userprofile.fk_provinsi_id = provinsi.id
	INNER JOIN kota ON userprofile.fk_kota_id = kota.id
	INNER JOIN kecamatan ON kecamatan.fk_kota_id = kota.id; 
	
/*3.*/
SELECT (SELECT COUNT(tipeuser.id) FROM tipeuser), COUNT(provinsi.id), COUNT(kota.id), COUNT(kecamatan.id), COUNT(userprofile.id)
 FROM userprofile
	INNER JOIN provinsi ON userprofile.fk_provinsi_id = provinsi.id
	INNER JOIN kota ON userprofile.fk_kota_id = kota.id
	INNER JOIN kecamatan ON kecamatan.fk_kota_id = kota.id; 
	
