.class public final enum Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;
.super Ljava/lang/Enum;
.source "FacebookPushNotification.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

.field public static final enum APP_REQUEST:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

.field public static final enum CHAT:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

.field public static final enum CODE_GENERATOR:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

.field public static final enum COMMENT:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

.field public static final enum DEFAULT:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

.field public static final enum EVENT:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

.field public static final enum FRIEND:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

.field public static final enum FRIEND_CONFIRMED:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

.field public static final enum GROUP_ACTIVITY:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

.field public static final enum MSG:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

.field public static final enum NEARBY:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

.field public static final enum PHOTO_TAG:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

.field public static final enum PLACE_TAG:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

.field public static final enum UNKNOWN:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

.field public static final enum WALL:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->UNKNOWN:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    new-instance v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    const-string v1, "MSG"

    invoke-direct {v0, v1, v4}, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->MSG:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    new-instance v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    const-string v1, "CHAT"

    invoke-direct {v0, v1, v5}, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->CHAT:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    new-instance v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    const-string v1, "WALL"

    invoke-direct {v0, v1, v6}, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->WALL:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    new-instance v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    const-string v1, "EVENT"

    invoke-direct {v0, v1, v7}, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->EVENT:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    new-instance v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    const-string v1, "FRIEND"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->FRIEND:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    new-instance v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    const-string v1, "GROUP_ACTIVITY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->GROUP_ACTIVITY:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    new-instance v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    const-string v1, "NEARBY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->NEARBY:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    new-instance v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    const-string v1, "PHOTO_TAG"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->PHOTO_TAG:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    .line 49
    new-instance v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    const-string v1, "FRIEND_CONFIRMED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->FRIEND_CONFIRMED:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    new-instance v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    const-string v1, "COMMENT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->COMMENT:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    new-instance v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    const-string v1, "PLACE_TAG"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->PLACE_TAG:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    new-instance v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    const-string v1, "APP_REQUEST"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->APP_REQUEST:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    new-instance v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    const-string v1, "CODE_GENERATOR"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->CODE_GENERATOR:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    .line 50
    new-instance v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    const-string v1, "DEFAULT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->DEFAULT:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    .line 47
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    sget-object v1, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->UNKNOWN:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->MSG:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->CHAT:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->WALL:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->EVENT:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->FRIEND:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->GROUP_ACTIVITY:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->NEARBY:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->PHOTO_TAG:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->FRIEND_CONFIRMED:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->COMMENT:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->PLACE_TAG:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->APP_REQUEST:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->CODE_GENERATOR:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->DEFAULT:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->$VALUES:[Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;
    .locals 1
    .parameter

    .prologue
    .line 47
    const-class v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->$VALUES:[Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    invoke-virtual {v0}, [Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    return-object v0
.end method
