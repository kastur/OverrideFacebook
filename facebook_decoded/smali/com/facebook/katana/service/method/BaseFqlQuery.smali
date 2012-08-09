.class public abstract Lcom/facebook/katana/service/method/BaseFqlQuery;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "BaseFqlQuery.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct/range {p0 .. p6}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/StringBuilder;Z)V
.end method

.method protected final b(Z)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/facebook/katana/service/method/BaseFqlQuery;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Landroid/content/Context;)Z

    .line 22
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/katana/model/FacebookAffiliation;->b()Z

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 28
    const-string v1, ",\"method\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v1, p0, Lcom/facebook/katana/service/method/BaseFqlQuery;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string v1, "\",\"args\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/service/method/BaseFqlQuery;->a(Ljava/lang/StringBuilder;Z)V

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
