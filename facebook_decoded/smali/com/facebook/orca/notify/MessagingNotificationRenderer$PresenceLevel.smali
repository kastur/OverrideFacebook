.class public final enum Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;
.super Ljava/lang/Enum;
.source "MessagingNotificationRenderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

.field public static final enum IN_APP_ACTIVE:Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

.field public static final enum IN_APP_IDLE:Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

.field public static final enum NOT_IN_APP:Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

    const-string v1, "IN_APP_ACTIVE"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;->IN_APP_ACTIVE:Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

    .line 23
    new-instance v0, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

    const-string v1, "IN_APP_IDLE"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;->IN_APP_IDLE:Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

    .line 26
    new-instance v0, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

    const-string v1, "NOT_IN_APP"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;->NOT_IN_APP:Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

    sget-object v1, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;->IN_APP_ACTIVE:Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;->IN_APP_IDLE:Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;->NOT_IN_APP:Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;->$VALUES:[Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;
    .locals 1
    .parameter

    .prologue
    .line 18
    const-class v0, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;->$VALUES:[Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

    invoke-virtual {v0}, [Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

    return-object v0
.end method
