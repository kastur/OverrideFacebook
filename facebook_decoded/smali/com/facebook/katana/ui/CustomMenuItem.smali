.class public Lcom/facebook/katana/ui/CustomMenuItem;
.super Ljava/lang/Object;
.source "CustomMenuItem.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/ui/CustomMenuItem;->a:Ljava/lang/String;

    .line 15
    iput v1, p0, Lcom/facebook/katana/ui/CustomMenuItem;->b:I

    .line 16
    iput v1, p0, Lcom/facebook/katana/ui/CustomMenuItem;->c:I

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/ui/CustomMenuItem;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/katana/ui/CustomMenuItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput p1, p0, Lcom/facebook/katana/ui/CustomMenuItem;->b:I

    .line 45
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/facebook/katana/ui/CustomMenuItem;->a:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/facebook/katana/ui/CustomMenuItem;->d:Z

    .line 80
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/facebook/katana/ui/CustomMenuItem;->b:I

    return v0
.end method

.method public final b(I)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput p1, p0, Lcom/facebook/katana/ui/CustomMenuItem;->c:I

    .line 65
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/facebook/katana/ui/CustomMenuItem;->c:I

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/facebook/katana/ui/CustomMenuItem;->d:Z

    return v0
.end method
