.class public Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;
.super Lcom/facebook/orca/activity/FbMapActivity;
.source "FbEmbeddableMapActivityImpl.java"

# interfaces
.implements Lcom/facebook/katana/fragment/FbEmbeddableMap;


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Lcom/facebook/orca/app/OrcaAppType;

.field private c:Lcom/google/android/maps/MapView;

.field private d:Lcom/google/android/maps/MapController;

.field private e:Landroid/app/Activity;

.field private f:Z

.field private g:Lcom/facebook/orca/threadview/FixedMyLocationOverlay;

.field private h:Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl$PinsOverlay;

.field private i:Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbMapActivity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->f:Z

    .line 36
    iput-object v1, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->g:Lcom/facebook/orca/threadview/FixedMyLocationOverlay;

    .line 37
    iput-object v1, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->h:Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl$PinsOverlay;

    .line 40
    new-instance v0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl$1;-><init>(Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;)V

    iput-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->i:Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;

    .line 202
    return-void
.end method

.method static synthetic a(Landroid/location/Location;)Lcom/google/android/maps/GeoPoint;
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-static {p0}, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->b(Landroid/location/Location;)Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;)Z
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;)Lcom/facebook/orca/threadview/FixedMyLocationOverlay;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->g:Lcom/facebook/orca/threadview/FixedMyLocationOverlay;

    return-object v0
.end method

.method private static b(Landroid/location/Location;)Lcom/google/android/maps/GeoPoint;
    .locals 6
    .parameter

    .prologue
    const-wide v4, 0x412e848000000000L

    .line 195
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v4

    double-to-int v1, v1

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 198
    return-object v0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->f:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/location/Location;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 171
    if-nez p1, :cond_0

    .line 180
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-static {p1}, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->b(Landroid/location/Location;)Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    .line 175
    if-eqz p2, :cond_1

    .line 176
    iget-object v1, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->d:Lcom/google/android/maps/MapController;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    goto :goto_0

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->d:Lcom/google/android/maps/MapController;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    goto :goto_0
.end method

.method protected final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 63
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbMapActivity;->a(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->getParent()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->e:Landroid/app/Activity;

    .line 66
    invoke-virtual {p0}, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->a()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 67
    const-class v1, Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaAppType;

    iput-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->b:Lcom/facebook/orca/app/OrcaAppType;

    .line 69
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->setContentView(I)V

    .line 70
    const v0, 0x7f0800ae

    invoke-virtual {p0, v0}, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->a:Landroid/widget/FrameLayout;

    .line 71
    new-instance v0, Lcom/google/android/maps/MapView;

    iget-object v1, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->b:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v1}, Lcom/facebook/orca/app/OrcaAppType;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->c:Lcom/google/android/maps/MapView;

    .line 72
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->c:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->d:Lcom/google/android/maps/MapController;

    .line 73
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 75
    iget-object v1, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->c:Lcom/google/android/maps/MapView;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->c:Lcom/google/android/maps/MapView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
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
    .line 185
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->h:Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl$PinsOverlay;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl$PinsOverlay;

    invoke-direct {v0, p0}, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl$PinsOverlay;-><init>(Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;)V

    iput-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->h:Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl$PinsOverlay;

    .line 187
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->c:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->h:Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl$PinsOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->c:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->postInvalidate()V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->h:Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl$PinsOverlay;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl$PinsOverlay;->a(Ljava/util/List;)V

    .line 191
    return-void
.end method

.method public final a_(I)V
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->d:Lcom/google/android/maps/MapController;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 166
    return-void
.end method

.method public final b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->c:Lcom/google/android/maps/MapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapView;->setClickable(Z)V

    .line 160
    return-void
.end method

.method public final c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 124
    if-eqz p1, :cond_2

    .line 125
    new-instance v0, Lcom/facebook/orca/threadview/FixedMyLocationOverlay;

    iget-object v1, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->c:Lcom/google/android/maps/MapView;

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/threadview/FixedMyLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    iput-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->g:Lcom/facebook/orca/threadview/FixedMyLocationOverlay;

    .line 126
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->c:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->g:Lcom/facebook/orca/threadview/FixedMyLocationOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {p0}, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->g:Lcom/facebook/orca/threadview/FixedMyLocationOverlay;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/FixedMyLocationOverlay;->enableMyLocation()Z

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->c:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->postInvalidate()V

    .line 135
    :cond_1
    :goto_0
    return-void

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->g:Lcom/facebook/orca/threadview/FixedMyLocationOverlay;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->g:Lcom/facebook/orca/threadview/FixedMyLocationOverlay;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/FixedMyLocationOverlay;->disableMyLocation()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->g:Lcom/facebook/orca/threadview/FixedMyLocationOverlay;

    goto :goto_0
.end method

.method public final d(Z)V
    .locals 1
    .parameter

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->f:Z

    .line 145
    if-eqz p1, :cond_1

    .line 147
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->i:Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;

    invoke-static {p0, v0}, Lcom/facebook/katana/util/FBLocationManager;->a(Landroid/content/Context;Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;)V

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->b(Z)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-direct {p0}, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->i:Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;

    invoke-static {v0}, Lcom/facebook/katana/util/FBLocationManager;->a(Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;)V

    goto :goto_0
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 119
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lcom/facebook/orca/activity/FbMapActivity;->onPause()V

    .line 95
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->g:Lcom/facebook/orca/threadview/FixedMyLocationOverlay;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->g:Lcom/facebook/orca/threadview/FixedMyLocationOverlay;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/FixedMyLocationOverlay;->disableMyLocation()V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->i:Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;

    invoke-static {v0}, Lcom/facebook/katana/util/FBLocationManager;->a(Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;)V

    .line 99
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/facebook/orca/activity/FbMapActivity;->onResume()V

    .line 83
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->g:Lcom/facebook/orca/threadview/FixedMyLocationOverlay;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->g:Lcom/facebook/orca/threadview/FixedMyLocationOverlay;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/FixedMyLocationOverlay;->enableMyLocation()Z

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;->i:Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;

    invoke-static {p0, v0}, Lcom/facebook/katana/util/FBLocationManager;->a(Landroid/content/Context;Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;)V

    .line 89
    :cond_1
    return-void
.end method
