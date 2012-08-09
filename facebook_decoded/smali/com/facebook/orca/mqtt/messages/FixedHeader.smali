.class public Lcom/facebook/orca/mqtt/messages/FixedHeader;
.super Ljava/lang/Object;
.source "FixedHeader.java"


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:I

.field private final d:Z

.field private final e:I


# direct methods
.method constructor <init>(Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;)V
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->a()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/mqtt/messages/FixedHeader;->a:I

    .line 18
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/mqtt/messages/FixedHeader;->b:Z

    .line 19
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->c()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/mqtt/messages/FixedHeader;->c:I

    .line 20
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/mqtt/messages/FixedHeader;->d:Z

    .line 21
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->e()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/mqtt/messages/FixedHeader;->e:I

    .line 22
    return-void
.end method

.method public static newBuilder()Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/facebook/orca/mqtt/messages/FixedHeader;->a:I

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/facebook/orca/mqtt/messages/FixedHeader;->b:Z

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/facebook/orca/mqtt/messages/FixedHeader;->c:I

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/facebook/orca/mqtt/messages/FixedHeader;->d:Z

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/facebook/orca/mqtt/messages/FixedHeader;->e:I

    return v0
.end method
