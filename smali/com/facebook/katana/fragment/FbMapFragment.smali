.class public Lcom/facebook/katana/fragment/FbMapFragment;
.super Landroid/support/v4/app/Fragment;
.source "FbMapFragment.java"

# interfaces
.implements Lcom/facebook/katana/fragment/FbEmbeddableMap;


# instance fields
.field private J:Landroid/app/LocalActivityManager;

.field private K:Lcom/facebook/katana/fragment/FbEmbeddableMap;

.field private L:Landroid/widget/FrameLayout;

.field private M:I

.field private N:Z

.field private O:Landroid/location/Location;

.field private P:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Z

.field private R:Z

.field private S:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 27
    const/16 v0, 0x11

    iput v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->M:I

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->N:Z

    .line 29
    iput-object v2, p0, Lcom/facebook/katana/fragment/FbMapFragment;->O:Landroid/location/Location;

    .line 30
    iput-object v2, p0, Lcom/facebook/katana/fragment/FbMapFragment;->P:Ljava/util/ArrayList;

    .line 31
    iput-boolean v1, p0, Lcom/facebook/katana/fragment/FbMapFragment;->Q:Z

    .line 32
    iput-boolean v1, p0, Lcom/facebook/katana/fragment/FbMapFragment;->R:Z

    .line 33
    iput-boolean v1, p0, Lcom/facebook/katana/fragment/FbMapFragment;->S:Z

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->K:Lcom/facebook/katana/fragment/FbEmbeddableMap;

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-static {}, Lcom/facebook/katana/util/LocationUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Lcom/facebook/katana/util/LocationUtils;->b()Ljava/lang/Class;

    move-result-object v0

    .line 113
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/katana/fragment/FbMapFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/facebook/katana/fragment/FbMapFragment;->J:Landroid/app/LocalActivityManager;

    const-string v2, "map"

    invoke-virtual {v1, v2, v0}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v1

    .line 115
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->J:Landroid/app/LocalActivityManager;

    const-string v2, "map"

    invoke-virtual {v0, v2}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/fragment/FbEmbeddableMapActivityImpl;

    iput-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->K:Lcom/facebook/katana/fragment/FbEmbeddableMap;

    .line 116
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->K:Lcom/facebook/katana/fragment/FbEmbeddableMap;

    iget v2, p0, Lcom/facebook/katana/fragment/FbMapFragment;->M:I

    invoke-interface {v0, v2}, Lcom/facebook/katana/fragment/FbEmbeddableMap;->a_(I)V

    .line 117
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->K:Lcom/facebook/katana/fragment/FbEmbeddableMap;

    iget-boolean v2, p0, Lcom/facebook/katana/fragment/FbMapFragment;->N:Z

    invoke-interface {v0, v2}, Lcom/facebook/katana/fragment/FbEmbeddableMap;->b(Z)V

    .line 118
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->O:Landroid/location/Location;

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->K:Lcom/facebook/katana/fragment/FbEmbeddableMap;

    iget-object v2, p0, Lcom/facebook/katana/fragment/FbMapFragment;->O:Landroid/location/Location;

    iget-boolean v3, p0, Lcom/facebook/katana/fragment/FbMapFragment;->Q:Z

    invoke-interface {v0, v2, v3}, Lcom/facebook/katana/fragment/FbEmbeddableMap;->a(Landroid/location/Location;Z)V

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->P:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 122
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->K:Lcom/facebook/katana/fragment/FbEmbeddableMap;

    iget-object v2, p0, Lcom/facebook/katana/fragment/FbMapFragment;->P:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Lcom/facebook/katana/fragment/FbEmbeddableMap;->a(Ljava/util/List;)V

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->K:Lcom/facebook/katana/fragment/FbEmbeddableMap;

    iget-boolean v2, p0, Lcom/facebook/katana/fragment/FbMapFragment;->R:Z

    invoke-interface {v0, v2}, Lcom/facebook/katana/fragment/FbEmbeddableMap;->c(Z)V

    .line 125
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->K:Lcom/facebook/katana/fragment/FbEmbeddableMap;

    iget-boolean v2, p0, Lcom/facebook/katana/fragment/FbMapFragment;->S:Z

    invoke-interface {v0, v2}, Lcom/facebook/katana/fragment/FbEmbeddableMap;->d(Z)V

    .line 126
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->L:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/facebook/katana/fragment/FbMapFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->L:Landroid/widget/FrameLayout;

    .line 49
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->L:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final a(Landroid/location/Location;)V
    .locals 2
    .parameter

    .prologue
    .line 153
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/location/Location;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/fragment/FbMapFragment;->a(Ljava/util/List;)V

    .line 154
    return-void
.end method

.method public final a(Landroid/location/Location;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->K:Lcom/facebook/katana/fragment/FbEmbeddableMap;

    if-nez v0, :cond_0

    .line 173
    iput-object p1, p0, Lcom/facebook/katana/fragment/FbMapFragment;->O:Landroid/location/Location;

    .line 174
    iput-boolean p2, p0, Lcom/facebook/katana/fragment/FbMapFragment;->Q:Z

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->K:Lcom/facebook/katana/fragment/FbEmbeddableMap;

    invoke-interface {v0, p1, p2}, Lcom/facebook/katana/fragment/FbEmbeddableMap;->a(Landroid/location/Location;Z)V

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 39
    new-instance v0, Landroid/app/LocalActivityManager;

    invoke-virtual {p0}, Lcom/facebook/katana/fragment/FbMapFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->J:Landroid/app/LocalActivityManager;

    .line 40
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->J:Landroid/app/LocalActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 41
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
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
    .line 158
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->K:Lcom/facebook/katana/fragment/FbEmbeddableMap;

    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->P:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->P:Ljava/util/ArrayList;

    .line 167
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->K:Lcom/facebook/katana/fragment/FbEmbeddableMap;

    invoke-interface {v0, p1}, Lcom/facebook/katana/fragment/FbEmbeddableMap;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/facebook/katana/fragment/FbMapFragment;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    if-eqz p1, :cond_1

    .line 96
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->J:Landroid/app/LocalActivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchPause(Z)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-direct {p0}, Lcom/facebook/katana/fragment/FbMapFragment;->a()V

    .line 99
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->J:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchResume()V

    goto :goto_0
.end method

.method public final a_(I)V
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->K:Lcom/facebook/katana/fragment/FbEmbeddableMap;

    if-nez v0, :cond_0

    .line 135
    iput p1, p0, Lcom/facebook/katana/fragment/FbMapFragment;->M:I

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->K:Lcom/facebook/katana/fragment/FbEmbeddableMap;

    invoke-interface {v0, p1}, Lcom/facebook/katana/fragment/FbEmbeddableMap;->a_(I)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->K:Lcom/facebook/katana/fragment/FbEmbeddableMap;

    if-nez v0, :cond_0

    .line 145
    iput-boolean p1, p0, Lcom/facebook/katana/fragment/FbMapFragment;->N:Z

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->K:Lcom/facebook/katana/fragment/FbEmbeddableMap;

    invoke-interface {v0, p1}, Lcom/facebook/katana/fragment/FbEmbeddableMap;->b(Z)V

    goto :goto_0
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 56
    return-void
.end method

.method public final c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->K:Lcom/facebook/katana/fragment/FbEmbeddableMap;

    if-nez v0, :cond_0

    .line 184
    iput-boolean p1, p0, Lcom/facebook/katana/fragment/FbMapFragment;->R:Z

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->K:Lcom/facebook/katana/fragment/FbEmbeddableMap;

    invoke-interface {v0, p1}, Lcom/facebook/katana/fragment/FbEmbeddableMap;->c(Z)V

    goto :goto_0
.end method

.method public final d(Z)V
    .locals 1
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->K:Lcom/facebook/katana/fragment/FbEmbeddableMap;

    if-nez v0, :cond_0

    .line 194
    iput-boolean p1, p0, Lcom/facebook/katana/fragment/FbMapFragment;->S:Z

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->K:Lcom/facebook/katana/fragment/FbEmbeddableMap;

    invoke-interface {v0, p1}, Lcom/facebook/katana/fragment/FbEmbeddableMap;->d(Z)V

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->e()V

    .line 81
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->J:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchStop()V

    .line 82
    return-void
.end method

.method public final u()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->u()V

    .line 62
    invoke-virtual {p0}, Lcom/facebook/katana/fragment/FbMapFragment;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/facebook/katana/fragment/FbMapFragment;->a()V

    .line 64
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->J:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchResume()V

    .line 66
    :cond_0
    return-void
.end method

.method public final v()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->v()V

    .line 72
    invoke-virtual {p0}, Lcom/facebook/katana/fragment/FbMapFragment;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->J:Landroid/app/LocalActivityManager;

    invoke-virtual {p0}, Lcom/facebook/katana/fragment/FbMapFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchPause(Z)V

    .line 75
    :cond_0
    return-void
.end method

.method public final w()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->w()V

    .line 88
    iget-object v0, p0, Lcom/facebook/katana/fragment/FbMapFragment;->J:Landroid/app/LocalActivityManager;

    invoke-virtual {p0}, Lcom/facebook/katana/fragment/FbMapFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchDestroy(Z)V

    .line 89
    return-void
.end method
