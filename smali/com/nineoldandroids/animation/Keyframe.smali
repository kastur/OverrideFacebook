.class public abstract Lcom/nineoldandroids/animation/Keyframe;
.super Ljava/lang/Object;
.source "Keyframe.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field a:F

.field b:Z

.field private c:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nineoldandroids/animation/Keyframe;->c:Landroid/view/animation/Interpolator;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nineoldandroids/animation/Keyframe;->b:Z

    .line 320
    return-void
.end method

.method public static a(F)Lcom/nineoldandroids/animation/Keyframe;
    .locals 2
    .parameter

    .prologue
    .line 124
    new-instance v0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;-><init>(F)V

    return-object v0
.end method

.method public static a(FF)Lcom/nineoldandroids/animation/Keyframe;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 108
    new-instance v0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/animation/Interpolator;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/nineoldandroids/animation/Keyframe;->c:Landroid/view/animation/Interpolator;

    .line 222
    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/nineoldandroids/animation/Keyframe;->b:Z

    return v0
.end method

.method public abstract b()Ljava/lang/Object;
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/nineoldandroids/animation/Keyframe;->a:F

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/Keyframe;->e()Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v0

    return-object v0
.end method

.method public final d()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/nineoldandroids/animation/Keyframe;->c:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public abstract e()Lcom/nineoldandroids/animation/Keyframe;
.end method
