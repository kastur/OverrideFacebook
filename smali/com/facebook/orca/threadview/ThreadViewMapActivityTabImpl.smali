.class public Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;
.super Lcom/facebook/orca/activity/FbMapActivity;
.source "ThreadViewMapActivityTabImpl.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;
.implements Lcom/facebook/orca/threadview/ThreadViewMapActivityTab;


# instance fields
.field private a:Lcom/facebook/orca/cache/DataCache;

.field private b:Lcom/facebook/orca/app/OrcaAppType;

.field private c:Lcom/facebook/orca/threads/ThreadDateUtil;

.field private d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Lcom/facebook/orca/photos/tiles/UserTileView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/google/android/maps/MapView;

.field private l:Lcom/facebook/orca/threadview/ThreadViewActivity;

.field private m:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;

.field private n:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayForRadius;

.field private o:Lcom/google/android/maps/MyLocationOverlay;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbMapActivity;-><init>()V

    .line 336
    return-void
.end method

.method private static a(Ljava/util/List;)Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/maps/GeoPoint;",
            ">;)",
            "Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;"
        }
    .end annotation

    .prologue
    const v5, 0x7fffffff

    const/high16 v4, -0x8000

    .line 225
    .line 230
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v5

    move v2, v4

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/GeoPoint;

    .line 231
    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v6

    if-ge v6, v3, :cond_1

    .line 232
    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v3

    .line 234
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v6

    if-le v6, v2, :cond_2

    .line 235
    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    .line 237
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v6

    if-ge v6, v5, :cond_3

    .line 238
    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v5

    .line 240
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v6

    if-le v6, v4, :cond_0

    .line 241
    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v4

    goto :goto_0

    .line 245
    :cond_4
    add-int v0, v3, v2

    div-int/lit8 v6, v0, 0x2

    .line 246
    add-int v0, v5, v4

    div-int/lit8 v7, v0, 0x2

    .line 248
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;

    new-instance v1, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v1, v6, v7}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;-><init>(Lcom/google/android/maps/GeoPoint;IIII)V

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;Lcom/google/android/maps/OverlayItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->a(Lcom/google/android/maps/OverlayItem;)V

    return-void
.end method

.method private a(Lcom/google/android/maps/OverlayItem;)V
    .locals 6
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x0

    .line 372
    if-nez p1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 392
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 376
    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;

    .line 377
    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;->a()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    .line 378
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 379
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->g:Lcom/facebook/orca/photos/tiles/UserTileView;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/photos/tiles/UserTileView;->setUserKey(Lcom/facebook/orca/users/UserKey;)V

    .line 380
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/maps/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 383
    if-eqz v0, :cond_1

    .line 384
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->c:Lcom/facebook/orca/threads/ThreadDateUtil;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/facebook/orca/threads/ThreadDateUtil;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 82
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbMapActivity;->a(Landroid/os/Bundle;)V

    .line 84
    sget v0, Lcom/facebook/orca/R$layout;->orca_thread_view_map_tab:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->setContentView(I)V

    .line 85
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewActivity;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->l:Lcom/facebook/orca/threadview/ThreadViewActivity;

    .line 87
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->a()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 88
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->a:Lcom/facebook/orca/cache/DataCache;

    .line 89
    const-class v0, Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaAppType;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->b:Lcom/facebook/orca/app/OrcaAppType;

    .line 90
    const-class v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->c:Lcom/facebook/orca/threads/ThreadDateUtil;

    .line 91
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 93
    sget v0, Lcom/facebook/orca/R$id;->thread_view_map_frame:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->e:Landroid/widget/FrameLayout;

    .line 94
    sget v0, Lcom/facebook/orca/R$id;->thread_view_user_overlay:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->f:Landroid/widget/RelativeLayout;

    .line 95
    sget v0, Lcom/facebook/orca/R$id;->thread_view_map_user_img:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/UserTileView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->g:Lcom/facebook/orca/photos/tiles/UserTileView;

    .line 96
    sget v0, Lcom/facebook/orca/R$id;->thread_view_map_user_name:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->h:Landroid/widget/TextView;

    .line 97
    sget v0, Lcom/facebook/orca/R$id;->thread_view_map_user_snippet:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->i:Landroid/widget/TextView;

    .line 98
    sget v0, Lcom/facebook/orca/R$id;->thread_view_map_user_time:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->j:Landroid/widget/TextView;

    .line 100
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 101
    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;

    sget v2, Lcom/facebook/orca/R$drawable;->orca_map_member_marker:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;-><init>(Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->m:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;

    .line 103
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->m:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$1;-><init>(Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;->setOnFocusChangeListener(Lcom/google/android/maps/ItemizedOverlay$OnFocusChangeListener;)V

    .line 109
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayForRadius;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayForRadius;-><init>(Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->n:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayForRadius;

    .line 113
    new-instance v0, Lcom/google/android/maps/MapView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->b:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v1}, Lcom/facebook/orca/app/OrcaAppType;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->k:Lcom/google/android/maps/MapView;

    .line 114
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 116
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->k:Lcom/google/android/maps/MapView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapView;->setClickable(Z)V

    .line 117
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->k:Lcom/google/android/maps/MapView;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance v0, Lcom/facebook/orca/threadview/FixedMyLocationOverlay;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->k:Lcom/google/android/maps/MapView;

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/threadview/FixedMyLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->o:Lcom/google/android/maps/MyLocationOverlay;

    .line 119
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->k:Lcom/google/android/maps/MapView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 123
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 124
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 125
    return-void
.end method

.method public final a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/google/common/collect/ImmutableList;)V
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide v11, 0x412e848000000000L

    .line 160
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v1

    .line 161
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 162
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    .line 163
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 164
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->j()Lcom/facebook/orca/location/Coordinates;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 167
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(I)Ljava/util/ArrayList;

    move-result-object v8

    .line 174
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v9

    .line 175
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 176
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/users/UserKey;

    .line 177
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/orca/threads/Message;

    .line 178
    invoke-virtual {v7}, Lcom/facebook/orca/threads/Message;->j()Lcom/facebook/orca/location/Coordinates;

    move-result-object v0

    .line 179
    new-instance v2, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->a()D

    move-result-wide v3

    mul-double/2addr v3, v11

    double-to-int v1, v3

    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->b()D

    move-result-wide v3

    mul-double/2addr v3, v11

    double-to-int v3, v3

    invoke-direct {v2, v1, v3}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 181
    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->e()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 182
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/facebook/orca/cache/DataCache;->a(Ljava/lang/String;Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 186
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;

    invoke-virtual {v7}, Lcom/facebook/orca/threads/Message;->g()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;-><init>(Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;Lcom/google/android/maps/GeoPoint;FLjava/lang/String;Ljava/lang/String;Lcom/facebook/orca/users/UserKey;Lcom/facebook/orca/threads/Message;)V

    .line 188
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->m:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;

    invoke-virtual {v0, v9}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;->a(Ljava/util/List;)V

    .line 192
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->n:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayForRadius;

    invoke-virtual {v0, v9}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayForRadius;->a(Ljava/util/List;)V

    .line 195
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 196
    invoke-static {v8}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->a(Ljava/util/List;)Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->k:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    .line 198
    iget-object v2, v0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;->a:Lcom/google/android/maps/GeoPoint;

    .line 199
    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 201
    iget v2, v0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;->b:I

    iget v3, v0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;->c:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x2710

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 202
    iget v3, v0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;->d:I

    iget v0, v0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;->e:I

    sub-int v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 203
    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/MapController;->zoomToSpan(II)V

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->k:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 209
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->o:Lcom/google/android/maps/MyLocationOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->n:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayForRadius;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->m:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v1, Lcom/facebook/orca/threadview/ZoomOverlay;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->k:Lcom/google/android/maps/MapView;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/threadview/ZoomOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->k:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->invalidate()V

    .line 215
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->k:Lcom/google/android/maps/MapView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 216
    return-void
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "thread_view_map"

    return-object v0
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->l:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->j()V

    .line 150
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Lcom/facebook/orca/activity/FbMapActivity;->onDestroy()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->l:Lcom/facebook/orca/threadview/ThreadViewActivity;

    .line 131
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Lcom/facebook/orca/activity/FbMapActivity;->onPause()V

    .line 144
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->o:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 145
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 135
    invoke-super {p0}, Lcom/facebook/orca/activity/FbMapActivity;->onResume()V

    .line 136
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->u:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->o:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->enableMyLocation()Z

    .line 139
    :cond_0
    return-void
.end method
