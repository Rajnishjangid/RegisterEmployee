using PrDbcontext.Account;
using PrModel.Account;
using PrModel.Manage;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PrakshGroup.Controllers
{
    public class AccountController : Controller
    {
        AccountRepository Repo = null;
        public AccountController()
        {
            Repo = new AccountRepository();
        }
        // GET: Account
        public ActionResult Index()
        {
            return View(Repo.GetUsers());
        }
        public ActionResult Create()
        {
            try
            {
                IEnumerable<PrDepartment> ObjDept;
                ObjDept = Repo.Getdepartment();
                ViewBag.deprtlist = new SelectList(ObjDept, "Id", "Department");
                IEnumerable<PrState> ObjState;
                ObjState = Repo.GetState();
                ViewBag.statelist = new SelectList(ObjState, "Id", "State");
                IEnumerable<PrCity> ObjCity;
                ObjCity = Repo.GetCity();
                ViewBag.citylist = new SelectList(ObjCity, "Id", "Cityname");
                return View();
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        [HttpPost]
        public ActionResult Create(PrUser objuser)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    if (Repo.InsertUser(objuser)) ;
                    {
                        RedirectToAction("Index");
                        // ViewBag.Message("Insert User Successfully");
                    }
                }
                return View();
            }
            catch (Exception ex)
            {

                throw;
            }

        }
        public ActionResult Edit(int Id)
        {
            try
            {
                PrUser objuser = new PrUser();
                IEnumerable<PrDepartment> ObjDept;
                ObjDept = Repo.Getdepartment();
                ViewBag.deprtlist = new SelectList(ObjDept, "Id", "Department", objuser.Department);
                IEnumerable<PrState> ObjState;
                ObjState = Repo.GetState();
                ViewBag.statelist = new SelectList(ObjState, "Id", "State", objuser.State);
                IEnumerable<PrCity> ObjCity;
                ObjCity = Repo.GetCity();
                ViewBag.citylist = new SelectList(ObjCity, "Id", "Cityname", objuser.Cityname);
                return View(Repo.GetUsers().Find(smodel => smodel.Id == Id));
               }
            catch (Exception ex)
            {

                throw;
            }

        }
        [HttpPost]
        public ActionResult Edit(int id, PrUser objuser)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    if (Repo.UpdateUser(objuser))
                    {
                        return RedirectToAction("Index");
                    }
                }
                return View();
            }
            catch (Exception ex)
            {

                throw;
            }

        }
            public ActionResult Delete(int id)
            {
                try
                {
                    if (Repo.DeleteUser(id))
                    {
                        ViewBag.AlertMsg = "Student Deleted Successfully";
                    }
                    return RedirectToAction("Index");
                }
                catch (Exception ex)
                {

                    throw;
                }
            }
        }
    }