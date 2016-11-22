<#import "/template.ftlh" as template/>
<#import "/spring.ftl" as spring/>

<!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="list-inline">
                        <li>
                            <a href="${contextroot}/"><@spring.message "footer.home-link"/></a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="#about"><@spring.message "footer.info"/></a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="#services"><@spring.message "footer.services"/></a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="/therapie/contact-us"><@spring.message "footer.contact-us"/></a>
                        </li>
                    </ul>
                    <p class="copyright text-muted small"><@spring.message "footer.copyright"/></p>
                </div>
            </div>
        </div>
    </footer>