.class Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;
.super Lcom/nineoldandroids/animation/Keyframe;
.source "Keyframe.java"


# instance fields
.field private c:I


# direct methods
.method private constructor <init>(FI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/nineoldandroids/animation/Keyframe;-><init>()V

    .line 283
    iput p1, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->a:F

    .line 284
    iput p2, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->c:I

    .line 285
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->b:Z

    .line 287
    return-void
.end method

.method private g()Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;
    .locals 3

    .prologue
    .line 311
    new-instance v0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->c()F

    move-result v1

    iget v2, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->c:I

    invoke-direct {v0, v1, v2}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;-><init>(FI)V

    .line 312
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->d()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->a(Landroid/view/animation/Interpolator;)V

    .line 313
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 303
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_0

    .line 304
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->c:I

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->b:Z

    .line 307
    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->g()Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/nineoldandroids/animation/Keyframe;
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->g()Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->c:I

    return v0
.end method
