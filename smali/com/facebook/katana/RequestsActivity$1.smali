.class Lcom/facebook/katana/RequestsActivity$1;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "RequestsActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/RequestsActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/RequestsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/facebook/katana/RequestsActivity$1;->a:Lcom/facebook/katana/RequestsActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/AppSession;Ljava/util/Map;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/katana/binding/AppSession;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    if-nez p2, :cond_1

    .line 37
    iget-object v0, p0, Lcom/facebook/katana/RequestsActivity$1;->a:Lcom/facebook/katana/RequestsActivity;

    const v1, 0x7f0b0305

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 46
    :cond_0
    :goto_0
    invoke-virtual {p1, p0}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 47
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/RequestsActivity$1;->a:Lcom/facebook/katana/RequestsActivity;

    invoke-static {v0}, Lcom/facebook/katana/RequestsActivity;->a(Lcom/facebook/katana/RequestsActivity;)V

    .line 41
    iget-object v0, p0, Lcom/facebook/katana/RequestsActivity$1;->a:Lcom/facebook/katana/RequestsActivity;

    invoke-static {v0, p2}, Lcom/facebook/katana/RequestsActivity;->a(Lcom/facebook/katana/RequestsActivity;Ljava/util/Map;)V

    .line 42
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/facebook/katana/RequestsActivity$1;->a:Lcom/facebook/katana/RequestsActivity;

    invoke-static {v0}, Lcom/facebook/katana/RequestsActivity;->b(Lcom/facebook/katana/RequestsActivity;)V

    goto :goto_0
.end method
