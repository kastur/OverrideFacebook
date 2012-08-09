.class Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;
.super Lcom/nineoldandroids/animation/PropertyValuesHolder;
.source "PropertyValuesHolder.java"


# instance fields
.field private e:Lcom/nineoldandroids/util/FloatProperty;

.field private f:Lcom/nineoldandroids/animation/FloatKeyframeSet;

.field private g:F


# direct methods
.method public varargs constructor <init>(Lcom/nineoldandroids/util/Property;[F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 904
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Lcom/nineoldandroids/util/Property;B)V

    .line 905
    invoke-virtual {p0, p2}, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->a([F)V

    .line 906
    instance-of v0, p1, Lcom/nineoldandroids/util/FloatProperty;

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->a:Lcom/nineoldandroids/util/Property;

    check-cast v0, Lcom/nineoldandroids/util/FloatProperty;

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->e:Lcom/nineoldandroids/util/FloatProperty;

    .line 909
    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 899
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;B)V

    .line 900
    invoke-virtual {p0, p2}, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->a([F)V

    .line 901
    return-void
.end method

.method private e()Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;
    .locals 2

    .prologue
    .line 929
    invoke-super {p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a()Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    .line 930
    iget-object v1, v0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->c:Lcom/nineoldandroids/animation/KeyframeSet;

    check-cast v1, Lcom/nineoldandroids/animation/FloatKeyframeSet;

    iput-object v1, v0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->f:Lcom/nineoldandroids/animation/FloatKeyframeSet;

    .line 931
    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .locals 1

    .prologue
    .line 870
    invoke-direct {p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->e()Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method final a(F)V
    .locals 1
    .parameter

    .prologue
    .line 919
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->f:Lcom/nineoldandroids/animation/FloatKeyframeSet;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/FloatKeyframeSet;->b(F)F

    move-result v0

    iput v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->g:F

    .line 920
    return-void
.end method

.method final a(Ljava/lang/Class;)V
    .locals 1
    .parameter

    .prologue
    .line 969
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->a:Lcom/nineoldandroids/util/Property;

    if-eqz v0, :cond_0

    .line 1003
    :goto_0
    return-void

    .line 1001
    :cond_0
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public final varargs a([F)V
    .locals 1
    .parameter

    .prologue
    .line 913
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a([F)V

    .line 914
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->c:Lcom/nineoldandroids/animation/KeyframeSet;

    check-cast v0, Lcom/nineoldandroids/animation/FloatKeyframeSet;

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->f:Lcom/nineoldandroids/animation/FloatKeyframeSet;

    .line 915
    return-void
.end method

.method final b(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 943
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->e:Lcom/nineoldandroids/util/FloatProperty;

    if-eqz v0, :cond_1

    .line 944
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->e:Lcom/nineoldandroids/util/FloatProperty;

    iget v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->g:F

    invoke-virtual {v0, p1, v1}, Lcom/nineoldandroids/util/FloatProperty;->a(Ljava/lang/Object;F)V

    .line 965
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->a:Lcom/nineoldandroids/util/Property;

    if-eqz v0, :cond_2

    .line 948
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->a:Lcom/nineoldandroids/util/Property;

    iget v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->g:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nineoldandroids/util/Property;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 955
    :cond_2
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 957
    :try_start_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->d:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->g:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    .line 958
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->b:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->d:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 959
    :catch_0
    move-exception v0

    .line 960
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 961
    :catch_1
    move-exception v0

    .line 962
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 870
    invoke-direct {p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->e()Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method final d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 924
    iget v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->g:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
