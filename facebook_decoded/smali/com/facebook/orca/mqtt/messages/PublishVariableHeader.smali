.class public Lcom/facebook/orca/mqtt/messages/PublishVariableHeader;
.super Ljava/lang/Object;
.source "PublishVariableHeader.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/facebook/orca/mqtt/messages/PublishVariableHeader;->a:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/facebook/orca/mqtt/messages/PublishVariableHeader;->b:I

    .line 16
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/facebook/orca/mqtt/messages/PublishVariableHeader;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/facebook/orca/mqtt/messages/PublishVariableHeader;->b:I

    return v0
.end method
