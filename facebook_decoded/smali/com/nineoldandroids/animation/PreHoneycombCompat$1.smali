.class final Lcom/nineoldandroids/animation/PreHoneycombCompat$1;
.super Lcom/nineoldandroids/util/FloatProperty;
.source "PreHoneycombCompat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nineoldandroids/util/FloatProperty",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/nineoldandroids/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/view/View;)Ljava/lang/Float;
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-static {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->a(Landroid/view/View;)Lcom/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->a()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/view/View;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-static {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->a(Landroid/view/View;)Lcom/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->a(F)V

    .line 14
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 10
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/nineoldandroids/animation/PreHoneycombCompat$1;->a(Landroid/view/View;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    check-cast p1, Landroid/view/View;

    invoke-static {p1, p2}, Lcom/nineoldandroids/animation/PreHoneycombCompat$1;->a(Landroid/view/View;F)V

    return-void
.end method
