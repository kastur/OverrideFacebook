.class final Lcom/facebook/katana/util/ApplicationUtils$1;
.super Ljava/lang/Object;
.source "ApplicationUtils.java"

# interfaces
.implements Lcom/facebook/katana/binding/AppSessionListener$GetObjectListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/katana/binding/AppSessionListener$GetObjectListener",
        "<",
        "Lcom/facebook/katana/model/FacebookPlace;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Landroid/app/ProgressDialog;

.field private synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/app/ProgressDialog;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/facebook/katana/util/ApplicationUtils$1;->a:Landroid/app/ProgressDialog;

    iput-object p2, p0, Lcom/facebook/katana/util/ApplicationUtils$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/facebook/katana/model/FacebookPlace;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/katana/util/ApplicationUtils$1;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 73
    iget-object v0, p0, Lcom/facebook/katana/util/ApplicationUtils$1;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/facebook/katana/util/ApplicationUtils;->a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPlace;)Z

    .line 74
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 5
    .parameter

    .prologue
    .line 77
    const-string v0, "FacebookPlaces"

    const-string v1, "Exception when loading place: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/facebook/katana/util/ApplicationUtils$1;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 81
    iget-object v0, p0, Lcom/facebook/katana/util/ApplicationUtils$1;->b:Landroid/content/Context;

    const v1, 0x7f0b034a

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 82
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    check-cast p1, Lcom/facebook/katana/model/FacebookPlace;

    invoke-direct {p0, p1}, Lcom/facebook/katana/util/ApplicationUtils$1;->a(Lcom/facebook/katana/model/FacebookPlace;)V

    return-void
.end method
