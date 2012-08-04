.class public Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;
.super Ljava/lang/Object;
.source "FixedHeaderBuilder.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:I

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->e:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->a:I

    return v0
.end method

.method public final a(I)Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;
    .locals 0
    .parameter

    .prologue
    .line 21
    iput p1, p0, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->a:I

    .line 22
    return-object p0
.end method

.method public final a(Z)Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->b:Z

    .line 31
    return-object p0
.end method

.method public final b(I)Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;
    .locals 0
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->c:I

    .line 40
    return-object p0
.end method

.method public final b(Z)Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->d:Z

    .line 49
    return-object p0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->b:Z

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->c:I

    return v0
.end method

.method public final c(I)Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;
    .locals 0
    .parameter

    .prologue
    .line 57
    iput p1, p0, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->e:I

    .line 58
    return-object p0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->d:Z

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->e:I

    return v0
.end method

.method public final f()Lcom/facebook/orca/mqtt/messages/FixedHeader;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/facebook/orca/mqtt/messages/FixedHeader;

    invoke-direct {v0, p0}, Lcom/facebook/orca/mqtt/messages/FixedHeader;-><init>(Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;)V

    return-object v0
.end method
