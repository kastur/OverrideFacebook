.class public Lcom/facebook/orca/mqtt/messages/SubscribeTopic;
.super Ljava/lang/Object;
.source "SubscribeTopic.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;->a:Ljava/lang/String;

    .line 14
    iput p2, p0, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;->b:I

    .line 15
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;->a:Ljava/lang/String;

    return-object v0
.end method
