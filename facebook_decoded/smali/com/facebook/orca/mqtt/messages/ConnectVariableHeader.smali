.class public Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;
.super Ljava/lang/Object;
.source "ConnectVariableHeader.java"


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:Z

.field private final d:Z

.field private final e:I

.field private final f:Z

.field private final g:Z

.field private final h:I


# direct methods
.method constructor <init>(Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->a()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->a:I

    .line 21
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->b:Z

    .line 22
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->c:Z

    .line 23
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->d:Z

    .line 24
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->f()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->e:I

    .line 25
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->f:Z

    .line 26
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->g:Z

    .line 27
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->h()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->h:I

    .line 28
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->a:I

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->b:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->c:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->f:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->d:Z

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->e:I

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->g:Z

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->h:I

    return v0
.end method
