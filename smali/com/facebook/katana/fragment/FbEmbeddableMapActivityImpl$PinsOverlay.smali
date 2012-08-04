.class Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl$PinsOverlay;
.super Lcom/google/android/maps/ItemizedOverlay;
.source "FbEmbeddableMapActivityImpl.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/maps/OverlayItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;)V
    .locals 2
    .parameter

    .prologue
    .line 205
    invoke-virtual {p1}, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl$PinsOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl$PinsOverlay;->a:Ljava/util/ArrayList;

    .line 208
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 221
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 222
    invoke-static {v0}, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->a(Landroid/location/Location;)Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    .line 223
    new-instance v2, Lcom/google/android/maps/OverlayItem;

    invoke-direct {v2, v0, v3, v3}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl$PinsOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl$PinsOverlay;->populate()V

    .line 227
    return-void
.end method

.method protected createItem(I)Lcom/google/android/maps/OverlayItem;
    .locals 1
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl$PinsOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/OverlayItem;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl$PinsOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
