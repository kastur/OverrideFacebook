.class public Lcom/facebook/katana/activity/media/CameraFlash;
.super Ljava/lang/Object;
.source "CameraFlash.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/hardware/Camera;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lcom/facebook/katana/util/logging/CameraFlowLogger;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/activity/media/CameraFlash;->f:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/activity/media/CameraFlash;->g:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "auto"

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraFlash;->c:Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/media/CameraFlash;->e:Z

    .line 43
    sget-object v0, Lcom/facebook/katana/activity/media/CameraFlash;->f:Ljava/util/HashMap;

    const-string v1, "on"

    const v2, 0x7f020050

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/facebook/katana/activity/media/CameraFlash;->f:Ljava/util/HashMap;

    const-string v1, "off"

    const v2, 0x7f020054

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/facebook/katana/activity/media/CameraFlash;->f:Ljava/util/HashMap;

    const-string v1, "auto"

    const v2, 0x7f020051

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/facebook/katana/activity/media/CameraFlash;->g:Ljava/util/HashMap;

    const-string v1, "on"

    const v2, 0x7f020056

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/facebook/katana/activity/media/CameraFlash;->g:Ljava/util/HashMap;

    const-string v1, "off"

    const v2, 0x7f020055

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/facebook/katana/activity/media/CameraFlash;->g:Ljava/util/HashMap;

    const-string v1, "auto"

    const v2, 0x7f020052

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v0, "camera_flash_mode"

    const-string v1, "auto"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraFlash;->c:Ljava/lang/String;

    .line 53
    invoke-static {p2}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->b(Landroid/content/Context;)Lcom/facebook/katana/util/logging/CameraFlowLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraFlash;->d:Lcom/facebook/katana/util/logging/CameraFlowLogger;

    .line 54
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-virtual {p2, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 122
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraFlash;->c:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraFlash;->d:Lcom/facebook/katana/util/logging/CameraFlowLogger;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->b(Ljava/lang/String;)V

    .line 124
    return-object p2
.end method


# virtual methods
.method public final a(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .parameter

    .prologue
    .line 174
    const-string v0, "camera_flash_mode"

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraFlash;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 175
    return-void
.end method

.method public final a(Landroid/hardware/Camera;)V
    .locals 3
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraFlash;->a:Landroid/hardware/Camera;

    .line 72
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraFlash;->a:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraFlash;->b:Ljava/util/List;

    .line 89
    :cond_0
    return-void

    .line 75
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraFlash;->b:Ljava/util/List;

    .line 78
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraFlash;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    sget-object v2, Lcom/facebook/katana/activity/media/CameraFlash;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 85
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CameraFlash;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/facebook/katana/activity/media/CameraFlash;->e:Z

    .line 67
    return-void
.end method

.method public final a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 58
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraFlash;->a:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    .line 59
    const-string v1, "CameraFlash"

    const-string v2, "Camera was not set yet. Plese set camera"

    invoke-static {v1, v2}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraFlash;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraFlash;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraFlash;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 109
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraFlash;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/CameraFlash;->c:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraFlash;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/activity/media/CameraFlash;->a(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 116
    :goto_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraFlash;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraFlash;->b:Ljava/util/List;

    const-string v2, "auto"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    const-string v0, "auto"

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/activity/media/CameraFlash;->a(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    goto :goto_1

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraFlash;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/activity/media/CameraFlash;->a(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    goto :goto_1
.end method

.method public final b(Landroid/hardware/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/facebook/katana/activity/media/CameraFlash;->a(Landroid/hardware/Camera;)V

    .line 166
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraFlash;->b()V

    .line 167
    return-void
.end method

.method public final c()I
    .locals 2

    .prologue
    .line 179
    sget-object v0, Lcom/facebook/katana/activity/media/CameraFlash;->f:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraFlash;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 131
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CameraFlash;->a:Landroid/hardware/Camera;

    if-nez v2, :cond_1

    .line 132
    const-string v1, "CameraFlash"

    const-string v2, "camera was not set for flash to work properly"

    invoke-static {v1, v2}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CameraFlash;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 137
    const-string v1, "CameraFlash"

    const-string v2, "No flash support found"

    invoke-static {v1, v2}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_2
    iget-boolean v2, p0, Lcom/facebook/katana/activity/media/CameraFlash;->e:Z

    if-nez v2, :cond_3

    .line 142
    const-string v1, "CameraFlash"

    const-string v2, "Camera not ready for flash"

    invoke-static {v1, v2}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_3
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CameraFlash;->a:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 146
    iget-object v3, p0, Lcom/facebook/katana/activity/media/CameraFlash;->b:Ljava/util/List;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 148
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    .line 149
    sget-object v0, Lcom/facebook/katana/activity/media/CameraFlash;->g:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/CameraFlash;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    move v0, v1

    .line 150
    goto :goto_0

    .line 151
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 153
    add-int/lit8 v0, v3, 0x1

    iget-object v3, p0, Lcom/facebook/katana/activity/media/CameraFlash;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int v3, v0, v3

    .line 154
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraFlash;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/facebook/katana/activity/media/CameraFlash;->a(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 155
    sget-object v0, Lcom/facebook/katana/activity/media/CameraFlash;->f:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/facebook/katana/activity/media/CameraFlash;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 156
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraFlash;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    move v0, v1

    .line 157
    goto :goto_0
.end method
