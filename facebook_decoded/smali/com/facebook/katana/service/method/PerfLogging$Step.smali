.class public final enum Lcom/facebook/katana/service/method/PerfLogging$Step;
.super Ljava/lang/Enum;
.source "PerfLogging.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/service/method/PerfLogging$Step;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/service/method/PerfLogging$Step;

.field public static final enum DATA_RECEIVED:Lcom/facebook/katana/service/method/PerfLogging$Step;

.field public static final enum DATA_REQUESTED:Lcom/facebook/katana/service/method/PerfLogging$Step;

.field public static final enum ONCREATE:Lcom/facebook/katana/service/method/PerfLogging$Step;

.field public static final enum ONRESUME:Lcom/facebook/katana/service/method/PerfLogging$Step;

.field public static final enum UI_DRAWN_FRESH:Lcom/facebook/katana/service/method/PerfLogging$Step;

.field public static final enum UI_DRAWN_STALE:Lcom/facebook/katana/service/method/PerfLogging$Step;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/facebook/katana/service/method/PerfLogging$Step;

    const-string v1, "ONCREATE"

    invoke-direct {v0, v1, v3}, Lcom/facebook/katana/service/method/PerfLogging$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/service/method/PerfLogging$Step;->ONCREATE:Lcom/facebook/katana/service/method/PerfLogging$Step;

    new-instance v0, Lcom/facebook/katana/service/method/PerfLogging$Step;

    const-string v1, "ONRESUME"

    invoke-direct {v0, v1, v4}, Lcom/facebook/katana/service/method/PerfLogging$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/service/method/PerfLogging$Step;->ONRESUME:Lcom/facebook/katana/service/method/PerfLogging$Step;

    new-instance v0, Lcom/facebook/katana/service/method/PerfLogging$Step;

    const-string v1, "UI_DRAWN_STALE"

    invoke-direct {v0, v1, v5}, Lcom/facebook/katana/service/method/PerfLogging$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/service/method/PerfLogging$Step;->UI_DRAWN_STALE:Lcom/facebook/katana/service/method/PerfLogging$Step;

    new-instance v0, Lcom/facebook/katana/service/method/PerfLogging$Step;

    const-string v1, "DATA_REQUESTED"

    invoke-direct {v0, v1, v6}, Lcom/facebook/katana/service/method/PerfLogging$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/service/method/PerfLogging$Step;->DATA_REQUESTED:Lcom/facebook/katana/service/method/PerfLogging$Step;

    new-instance v0, Lcom/facebook/katana/service/method/PerfLogging$Step;

    const-string v1, "DATA_RECEIVED"

    invoke-direct {v0, v1, v7}, Lcom/facebook/katana/service/method/PerfLogging$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/service/method/PerfLogging$Step;->DATA_RECEIVED:Lcom/facebook/katana/service/method/PerfLogging$Step;

    new-instance v0, Lcom/facebook/katana/service/method/PerfLogging$Step;

    const-string v1, "UI_DRAWN_FRESH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/service/method/PerfLogging$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/service/method/PerfLogging$Step;->UI_DRAWN_FRESH:Lcom/facebook/katana/service/method/PerfLogging$Step;

    .line 24
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/facebook/katana/service/method/PerfLogging$Step;

    sget-object v1, Lcom/facebook/katana/service/method/PerfLogging$Step;->ONCREATE:Lcom/facebook/katana/service/method/PerfLogging$Step;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/katana/service/method/PerfLogging$Step;->ONRESUME:Lcom/facebook/katana/service/method/PerfLogging$Step;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/katana/service/method/PerfLogging$Step;->UI_DRAWN_STALE:Lcom/facebook/katana/service/method/PerfLogging$Step;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/katana/service/method/PerfLogging$Step;->DATA_REQUESTED:Lcom/facebook/katana/service/method/PerfLogging$Step;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/katana/service/method/PerfLogging$Step;->DATA_RECEIVED:Lcom/facebook/katana/service/method/PerfLogging$Step;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/katana/service/method/PerfLogging$Step;->UI_DRAWN_FRESH:Lcom/facebook/katana/service/method/PerfLogging$Step;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/service/method/PerfLogging$Step;->$VALUES:[Lcom/facebook/katana/service/method/PerfLogging$Step;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/service/method/PerfLogging$Step;
    .locals 1
    .parameter

    .prologue
    .line 24
    const-class v0, Lcom/facebook/katana/service/method/PerfLogging$Step;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/PerfLogging$Step;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/service/method/PerfLogging$Step;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/facebook/katana/service/method/PerfLogging$Step;->$VALUES:[Lcom/facebook/katana/service/method/PerfLogging$Step;

    invoke-virtual {v0}, [Lcom/facebook/katana/service/method/PerfLogging$Step;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/service/method/PerfLogging$Step;

    return-object v0
.end method
