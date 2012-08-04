.class public final enum Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;
.super Ljava/lang/Enum;
.source "MarkJewelSeen.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;

.field public static final enum FRIEND_REQUESTS:Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;

.field public static final enum INBOX:Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;

.field public static final enum NOTIFICATIONS:Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;

    const-string v1, "INBOX"

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;->INBOX:Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;

    new-instance v0, Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;

    const-string v1, "FRIEND_REQUESTS"

    invoke-direct {v0, v1, v3}, Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;->FRIEND_REQUESTS:Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;

    new-instance v0, Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;

    const-string v1, "NOTIFICATIONS"

    invoke-direct {v0, v1, v4}, Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;->NOTIFICATIONS:Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;

    sget-object v1, Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;->INBOX:Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;->FRIEND_REQUESTS:Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;->NOTIFICATIONS:Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;->$VALUES:[Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;
    .locals 1
    .parameter

    .prologue
    .line 31
    const-class v0, Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;->$VALUES:[Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;

    invoke-virtual {v0}, [Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;

    return-object v0
.end method
