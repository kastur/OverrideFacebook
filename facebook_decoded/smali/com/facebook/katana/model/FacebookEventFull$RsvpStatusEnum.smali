.class public final enum Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;
.super Ljava/lang/Enum;
.source "FacebookEventFull.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

.field public static final enum ATTENDING:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

.field public static final enum DECLINED:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

.field public static final enum NOT_REPLIED:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

.field public static final enum UNSURE:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

    const-string v1, "ATTENDING"

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;->ATTENDING:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

    .line 48
    new-instance v0, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

    const-string v1, "UNSURE"

    invoke-direct {v0, v1, v3}, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;->UNSURE:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

    .line 49
    new-instance v0, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

    const-string v1, "DECLINED"

    invoke-direct {v0, v1, v4}, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;->DECLINED:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

    .line 50
    new-instance v0, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

    const-string v1, "NOT_REPLIED"

    invoke-direct {v0, v1, v5}, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;->NOT_REPLIED:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

    sget-object v1, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;->ATTENDING:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;->UNSURE:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;->DECLINED:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;->NOT_REPLIED:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;->$VALUES:[Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;
    .locals 1
    .parameter

    .prologue
    .line 46
    const-class v0, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;->$VALUES:[Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

    invoke-virtual {v0}, [Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

    return-object v0
.end method
