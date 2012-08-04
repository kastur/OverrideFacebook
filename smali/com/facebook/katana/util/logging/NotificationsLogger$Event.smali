.class public final enum Lcom/facebook/katana/util/logging/NotificationsLogger$Event;
.super Ljava/lang/Enum;
.source "NotificationsLogger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/util/logging/NotificationsLogger$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

.field public static final enum ADD_TO_TRAY:Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

.field public static final enum CLEAR_FROM_TRAY:Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

.field public static final enum CLICK_FROM_TRAY:Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

.field public static final enum JEWEL_CLICK:Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

.field public static final enum NOTIFICATION_CLICK:Lcom/facebook/katana/util/logging/NotificationsLogger$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 279
    new-instance v0, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

    const-string v1, "ADD_TO_TRAY"

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;->ADD_TO_TRAY:Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

    .line 280
    new-instance v0, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

    const-string v1, "CLEAR_FROM_TRAY"

    invoke-direct {v0, v1, v3}, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;->CLEAR_FROM_TRAY:Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

    .line 281
    new-instance v0, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

    const-string v1, "CLICK_FROM_TRAY"

    invoke-direct {v0, v1, v4}, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;->CLICK_FROM_TRAY:Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

    .line 282
    new-instance v0, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

    const-string v1, "NOTIFICATION_CLICK"

    invoke-direct {v0, v1, v5}, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;->NOTIFICATION_CLICK:Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

    .line 283
    new-instance v0, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

    const-string v1, "JEWEL_CLICK"

    invoke-direct {v0, v1, v6}, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;->JEWEL_CLICK:Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

    .line 278
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

    sget-object v1, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;->ADD_TO_TRAY:Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;->CLEAR_FROM_TRAY:Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;->CLICK_FROM_TRAY:Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;->NOTIFICATION_CLICK:Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;->JEWEL_CLICK:Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;->$VALUES:[Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

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
    .line 278
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/util/logging/NotificationsLogger$Event;
    .locals 1
    .parameter

    .prologue
    .line 278
    const-class v0, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/util/logging/NotificationsLogger$Event;
    .locals 1

    .prologue
    .line 278
    sget-object v0, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;->$VALUES:[Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

    invoke-virtual {v0}, [Lcom/facebook/katana/util/logging/NotificationsLogger$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

    return-object v0
.end method
