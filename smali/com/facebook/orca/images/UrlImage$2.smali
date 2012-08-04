.class Lcom/facebook/orca/images/UrlImage$2;
.super Ljava/lang/Object;
.source "UrlImage.java"

# interfaces
.implements Lcom/facebook/orca/common/async/Deferrable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/images/UrlImage;


# direct methods
.method constructor <init>(Lcom/facebook/orca/images/UrlImage;)V
    .locals 0
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/facebook/orca/images/UrlImage$2;->a:Lcom/facebook/orca/images/UrlImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 427
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage$2;->a:Lcom/facebook/orca/images/UrlImage;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/facebook/orca/images/UrlImage;->a(Lcom/facebook/orca/images/UrlImage;Ljava/util/List;)V

    .line 428
    const/4 v0, 0x0

    return-object v0
.end method
