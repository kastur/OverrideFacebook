.class public final enum Lcom/facebook/orca/threads/Message$ChannelSource;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/threads/Message$ChannelSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/threads/Message$ChannelSource;

.field public static final enum API:Lcom/facebook/orca/threads/Message$ChannelSource;

.field public static final enum C2DM:Lcom/facebook/orca/threads/Message$ChannelSource;

.field public static final enum MMS:Lcom/facebook/orca/threads/Message$ChannelSource;

.field public static final enum MQTT:Lcom/facebook/orca/threads/Message$ChannelSource;

.field public static final enum SEND:Lcom/facebook/orca/threads/Message$ChannelSource;

.field public static final enum SMS:Lcom/facebook/orca/threads/Message$ChannelSource;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Lcom/facebook/orca/threads/Message$ChannelSource;

    const-string v1, "API"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/threads/Message$ChannelSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/threads/Message$ChannelSource;->API:Lcom/facebook/orca/threads/Message$ChannelSource;

    .line 44
    new-instance v0, Lcom/facebook/orca/threads/Message$ChannelSource;

    const-string v1, "C2DM"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/threads/Message$ChannelSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/threads/Message$ChannelSource;->C2DM:Lcom/facebook/orca/threads/Message$ChannelSource;

    .line 45
    new-instance v0, Lcom/facebook/orca/threads/Message$ChannelSource;

    const-string v1, "MQTT"

    invoke-direct {v0, v1, v5}, Lcom/facebook/orca/threads/Message$ChannelSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/threads/Message$ChannelSource;->MQTT:Lcom/facebook/orca/threads/Message$ChannelSource;

    .line 46
    new-instance v0, Lcom/facebook/orca/threads/Message$ChannelSource;

    const-string v1, "MMS"

    invoke-direct {v0, v1, v6}, Lcom/facebook/orca/threads/Message$ChannelSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/threads/Message$ChannelSource;->MMS:Lcom/facebook/orca/threads/Message$ChannelSource;

    .line 47
    new-instance v0, Lcom/facebook/orca/threads/Message$ChannelSource;

    const-string v1, "SEND"

    invoke-direct {v0, v1, v7}, Lcom/facebook/orca/threads/Message$ChannelSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/threads/Message$ChannelSource;->SEND:Lcom/facebook/orca/threads/Message$ChannelSource;

    .line 48
    new-instance v0, Lcom/facebook/orca/threads/Message$ChannelSource;

    const-string v1, "SMS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/threads/Message$ChannelSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/threads/Message$ChannelSource;->SMS:Lcom/facebook/orca/threads/Message$ChannelSource;

    .line 42
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/facebook/orca/threads/Message$ChannelSource;

    sget-object v1, Lcom/facebook/orca/threads/Message$ChannelSource;->API:Lcom/facebook/orca/threads/Message$ChannelSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/threads/Message$ChannelSource;->C2DM:Lcom/facebook/orca/threads/Message$ChannelSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/orca/threads/Message$ChannelSource;->MQTT:Lcom/facebook/orca/threads/Message$ChannelSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/orca/threads/Message$ChannelSource;->MMS:Lcom/facebook/orca/threads/Message$ChannelSource;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/orca/threads/Message$ChannelSource;->SEND:Lcom/facebook/orca/threads/Message$ChannelSource;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/orca/threads/Message$ChannelSource;->SMS:Lcom/facebook/orca/threads/Message$ChannelSource;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/threads/Message$ChannelSource;->$VALUES:[Lcom/facebook/orca/threads/Message$ChannelSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/threads/Message$ChannelSource;
    .locals 1
    .parameter

    .prologue
    .line 42
    const-class v0, Lcom/facebook/orca/threads/Message$ChannelSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message$ChannelSource;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/threads/Message$ChannelSource;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/facebook/orca/threads/Message$ChannelSource;->$VALUES:[Lcom/facebook/orca/threads/Message$ChannelSource;

    invoke-virtual {v0}, [Lcom/facebook/orca/threads/Message$ChannelSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/threads/Message$ChannelSource;

    return-object v0
.end method
