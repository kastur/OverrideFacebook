.class public Lcom/facebook/orca/mqtt/messages/ConnAckVariableHeader;
.super Ljava/lang/Object;
.source "ConnAckVariableHeader.java"


# instance fields
.field private final a:B


# direct methods
.method public constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-byte p1, p0, Lcom/facebook/orca/mqtt/messages/ConnAckVariableHeader;->a:B

    .line 19
    return-void
.end method


# virtual methods
.method public final a()B
    .locals 1

    .prologue
    .line 27
    iget-byte v0, p0, Lcom/facebook/orca/mqtt/messages/ConnAckVariableHeader;->a:B

    return v0
.end method
