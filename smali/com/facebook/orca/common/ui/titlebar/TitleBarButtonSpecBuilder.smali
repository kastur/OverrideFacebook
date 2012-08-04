.class public Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;
.super Ljava/lang/Object;
.source "TitleBarButtonSpecBuilder.java"


# instance fields
.field private a:I

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a:I

    return v0
.end method

.method public final a(I)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;
    .locals 0
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a:I

    .line 24
    return-object p0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->b:Landroid/graphics/drawable/Drawable;

    .line 33
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->c:Ljava/lang/String;

    .line 69
    return-object p0
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;-><init>(Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;)V

    return-object v0
.end method
