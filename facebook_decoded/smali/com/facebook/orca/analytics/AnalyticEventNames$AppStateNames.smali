.class public final enum Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;
.super Ljava/lang/Enum;
.source "AnalyticEventNames.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

.field public static final enum ACTIVE:Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

.field public static final enum BACKGROUNDED:Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

.field public static final enum FOREGROUNDED:Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

.field public static final enum INIT:Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

.field public static final enum LAUNCH:Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

.field public static final enum RESIGN:Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;


# instance fields
.field private stateName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 39
    new-instance v0, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

    const-string v1, "INIT"

    const-string v2, "init"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;->INIT:Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

    .line 40
    new-instance v0, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

    const-string v1, "LAUNCH"

    const-string v2, "launch"

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;->LAUNCH:Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

    .line 41
    new-instance v0, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

    const-string v1, "ACTIVE"

    const-string v2, "active"

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;->ACTIVE:Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

    .line 42
    new-instance v0, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

    const-string v1, "RESIGN"

    const-string v2, "resign"

    invoke-direct {v0, v1, v7, v2}, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;->RESIGN:Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

    .line 43
    new-instance v0, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

    const-string v1, "FOREGROUNDED"

    const-string v2, "foreground"

    invoke-direct {v0, v1, v8, v2}, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;->FOREGROUNDED:Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

    .line 44
    new-instance v0, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

    const-string v1, "BACKGROUNDED"

    const/4 v2, 0x5

    const-string v3, "background"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;->BACKGROUNDED:Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;->INIT:Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;->LAUNCH:Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;->ACTIVE:Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;->RESIGN:Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;->FOREGROUNDED:Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;->BACKGROUNDED:Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;->$VALUES:[Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput-object p3, p0, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;->stateName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;
    .locals 1
    .parameter

    .prologue
    .line 37
    const-class v0, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;->$VALUES:[Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

    invoke-virtual {v0}, [Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;->stateName:Ljava/lang/String;

    return-object v0
.end method
