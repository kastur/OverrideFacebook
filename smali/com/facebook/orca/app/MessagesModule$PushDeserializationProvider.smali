.class Lcom/facebook/orca/app/MessagesModule$PushDeserializationProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/push/common/PushDeserialization;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1820
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1820
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$PushDeserializationProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/push/common/PushDeserialization;
    .locals 6

    .prologue
    .line 1824
    new-instance v0, Lcom/facebook/orca/push/common/PushDeserialization;

    const-class v1, Lcom/facebook/orca/users/User;

    const-class v2, Lcom/facebook/orca/annotations/MeUser;

    invoke-virtual {p0, v1, v2}, Lcom/facebook/orca/app/MessagesModule$PushDeserializationProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/location/CoordinatesDeserializer;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$PushDeserializationProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/location/CoordinatesDeserializer;

    const-class v3, Lcom/facebook/orca/protocol/methods/SourceDeserializer;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$PushDeserializationProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/protocol/methods/SourceDeserializer;

    const-class v4, Lcom/facebook/orca/database/DbClock;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/app/MessagesModule$PushDeserializationProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/common/util/Clock;

    const-class v5, Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/app/MessagesModule$PushDeserializationProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/push/common/PushDeserialization;-><init>(Ljavax/inject/Provider;Lcom/facebook/orca/location/CoordinatesDeserializer;Lcom/facebook/orca/protocol/methods/SourceDeserializer;Lcom/facebook/orca/common/util/Clock;Lcom/facebook/orca/sms/SmsContentResolverHandler;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1820
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$PushDeserializationProvider;->b()Lcom/facebook/orca/push/common/PushDeserialization;

    move-result-object v0

    return-object v0
.end method
