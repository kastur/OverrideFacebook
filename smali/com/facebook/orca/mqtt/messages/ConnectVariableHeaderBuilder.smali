.class public Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;
.super Ljava/lang/Object;
.source "ConnectVariableHeaderBuilder.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:I

.field private f:Z

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->a:I

    return v0
.end method

.method public final a(I)Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;
    .locals 0
    .parameter

    .prologue
    .line 35
    iput p1, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->a:I

    .line 36
    return-object p0
.end method

.method public final a(Z)Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->b:Z

    .line 56
    return-object p0
.end method

.method public final b(I)Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;
    .locals 0
    .parameter

    .prologue
    .line 135
    iput p1, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->e:I

    .line 136
    return-object p0
.end method

.method public final b(Z)Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->c:Z

    .line 76
    return-object p0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->b:Z

    return v0
.end method

.method public final c(I)Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;
    .locals 0
    .parameter

    .prologue
    .line 175
    iput p1, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->h:I

    .line 176
    return-object p0
.end method

.method public final c(Z)Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->f:Z

    .line 96
    return-object p0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->c:Z

    return v0
.end method

.method public final d(Z)Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->d:Z

    .line 116
    return-object p0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->f:Z

    return v0
.end method

.method public final e(Z)Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->g:Z

    .line 156
    return-object p0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->d:Z

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->e:I

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->g:Z

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->h:I

    return v0
.end method

.method public final i()Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;

    invoke-direct {v0, p0}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;-><init>(Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;)V

    return-object v0
.end method
