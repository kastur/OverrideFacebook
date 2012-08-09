.class public final enum Lcom/facebook/katana/util/logging/MarkerType;
.super Ljava/lang/Enum;
.source "MarkerType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/util/logging/MarkerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/util/logging/MarkerType;

.field public static final enum ACTIVITY_CREATED:Lcom/facebook/katana/util/logging/MarkerType;

.field public static final enum ACTIVITY_RESUMED:Lcom/facebook/katana/util/logging/MarkerType;

.field public static final enum DATA_RECEIVED:Lcom/facebook/katana/util/logging/MarkerType;

.field public static final enum DATA_REQUESTED:Lcom/facebook/katana/util/logging/MarkerType;

.field public static final enum MARK:Lcom/facebook/katana/util/logging/MarkerType;

.field public static final enum START:Lcom/facebook/katana/util/logging/MarkerType;

.field public static final enum STOP:Lcom/facebook/katana/util/logging/MarkerType;

.field public static final enum VALUE:Lcom/facebook/katana/util/logging/MarkerType;


# instance fields
.field private final mMarkerName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5
    new-instance v0, Lcom/facebook/katana/util/logging/MarkerType;

    const-string v1, "START"

    const-string v2, "start"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/katana/util/logging/MarkerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/util/logging/MarkerType;->START:Lcom/facebook/katana/util/logging/MarkerType;

    .line 6
    new-instance v0, Lcom/facebook/katana/util/logging/MarkerType;

    const-string v1, "STOP"

    const-string v2, "stop"

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/katana/util/logging/MarkerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/util/logging/MarkerType;->STOP:Lcom/facebook/katana/util/logging/MarkerType;

    .line 7
    new-instance v0, Lcom/facebook/katana/util/logging/MarkerType;

    const-string v1, "MARK"

    const-string v2, "mark"

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/katana/util/logging/MarkerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/util/logging/MarkerType;->MARK:Lcom/facebook/katana/util/logging/MarkerType;

    .line 8
    new-instance v0, Lcom/facebook/katana/util/logging/MarkerType;

    const-string v1, "VALUE"

    const-string v2, "value"

    invoke-direct {v0, v1, v7, v2}, Lcom/facebook/katana/util/logging/MarkerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/util/logging/MarkerType;->VALUE:Lcom/facebook/katana/util/logging/MarkerType;

    .line 9
    new-instance v0, Lcom/facebook/katana/util/logging/MarkerType;

    const-string v1, "DATA_REQUESTED"

    const-string v2, "data_requested"

    invoke-direct {v0, v1, v8, v2}, Lcom/facebook/katana/util/logging/MarkerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/util/logging/MarkerType;->DATA_REQUESTED:Lcom/facebook/katana/util/logging/MarkerType;

    .line 10
    new-instance v0, Lcom/facebook/katana/util/logging/MarkerType;

    const-string v1, "DATA_RECEIVED"

    const/4 v2, 0x5

    const-string v3, "data_received"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/util/logging/MarkerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/util/logging/MarkerType;->DATA_RECEIVED:Lcom/facebook/katana/util/logging/MarkerType;

    .line 11
    new-instance v0, Lcom/facebook/katana/util/logging/MarkerType;

    const-string v1, "ACTIVITY_CREATED"

    const/4 v2, 0x6

    const-string v3, "activity_created"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/util/logging/MarkerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/util/logging/MarkerType;->ACTIVITY_CREATED:Lcom/facebook/katana/util/logging/MarkerType;

    .line 12
    new-instance v0, Lcom/facebook/katana/util/logging/MarkerType;

    const-string v1, "ACTIVITY_RESUMED"

    const/4 v2, 0x7

    const-string v3, "activity_resumed"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/util/logging/MarkerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/util/logging/MarkerType;->ACTIVITY_RESUMED:Lcom/facebook/katana/util/logging/MarkerType;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/facebook/katana/util/logging/MarkerType;

    sget-object v1, Lcom/facebook/katana/util/logging/MarkerType;->START:Lcom/facebook/katana/util/logging/MarkerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/katana/util/logging/MarkerType;->STOP:Lcom/facebook/katana/util/logging/MarkerType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/katana/util/logging/MarkerType;->MARK:Lcom/facebook/katana/util/logging/MarkerType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/katana/util/logging/MarkerType;->VALUE:Lcom/facebook/katana/util/logging/MarkerType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/katana/util/logging/MarkerType;->DATA_REQUESTED:Lcom/facebook/katana/util/logging/MarkerType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/katana/util/logging/MarkerType;->DATA_RECEIVED:Lcom/facebook/katana/util/logging/MarkerType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/katana/util/logging/MarkerType;->ACTIVITY_CREATED:Lcom/facebook/katana/util/logging/MarkerType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/katana/util/logging/MarkerType;->ACTIVITY_RESUMED:Lcom/facebook/katana/util/logging/MarkerType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/util/logging/MarkerType;->$VALUES:[Lcom/facebook/katana/util/logging/MarkerType;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/facebook/katana/util/logging/MarkerType;->mMarkerName:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/util/logging/MarkerType;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/facebook/katana/util/logging/MarkerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/logging/MarkerType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/util/logging/MarkerType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/facebook/katana/util/logging/MarkerType;->$VALUES:[Lcom/facebook/katana/util/logging/MarkerType;

    invoke-virtual {v0}, [Lcom/facebook/katana/util/logging/MarkerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/util/logging/MarkerType;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/facebook/katana/util/logging/MarkerType;->mMarkerName:Ljava/lang/String;

    return-object v0
.end method
