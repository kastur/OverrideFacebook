.class public Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;
.super Ljava/lang/Object;
.source "TitleBarButtonSpec.java"


# instance fields
.field private final a:I

.field private final b:Landroid/graphics/drawable/Drawable;

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private final f:Ljava/lang/String;

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->a:I

    .line 22
    invoke-virtual {p1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->b:Landroid/graphics/drawable/Drawable;

    .line 23
    invoke-virtual {p1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->c:Z

    .line 24
    invoke-virtual {p1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->d:Z

    .line 25
    invoke-virtual {p1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->e:Z

    .line 26
    invoke-virtual {p1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->f:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static newBuilder()Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->a:I

    return v0
.end method

.method final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->g:Z

    .line 55
    return-void
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->c:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->d:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->g:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->e:Z

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->f:Ljava/lang/String;

    return-object v0
.end method
