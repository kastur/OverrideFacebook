.class Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl$1;
.super Ljava/lang/Object;
.source "FbEmbeddableMapActivityImpl.java"

# interfaces
.implements Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;


# direct methods
.method constructor <init>(Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl$1;->a:Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl$1;->a:Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;

    invoke-static {v0}, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->a(Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl$1;->a:Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->a(Landroid/location/Location;Z)V

    .line 48
    :cond_0
    return-void
.end method

.method public final e_()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl$1;->a:Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;

    invoke-static {v0}, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->a(Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl$1;->a:Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;

    invoke-static {v0}, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->b(Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;)Lcom/facebook/orca/threadview/FixedMyLocationOverlay;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl$1;->a:Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;

    invoke-static {v0}, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->b(Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;)Lcom/facebook/orca/threadview/FixedMyLocationOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/FixedMyLocationOverlay;->getLastFix()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl$1;->a:Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;

    iget-object v1, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl$1;->a:Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;

    invoke-static {v1}, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->b(Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;)Lcom/facebook/orca/threadview/FixedMyLocationOverlay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/FixedMyLocationOverlay;->getLastFix()Landroid/location/Location;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->a(Landroid/location/Location;Z)V

    .line 57
    :cond_0
    return-void
.end method
