.class final enum Lcom/facebook/katana/RequestsAdapter$RequestState;
.super Ljava/lang/Enum;
.source "RequestsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/RequestsAdapter$RequestState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/RequestsAdapter$RequestState;

.field public static final enum NOT_RESPONDED:Lcom/facebook/katana/RequestsAdapter$RequestState;

.field public static final enum RESPONSE_CONFIRMED:Lcom/facebook/katana/RequestsAdapter$RequestState;

.field public static final enum RESPONSE_CONFIRMING:Lcom/facebook/katana/RequestsAdapter$RequestState;

.field public static final enum RESPONSE_IGNORED:Lcom/facebook/katana/RequestsAdapter$RequestState;

.field public static final enum RESPONSE_IGNORING:Lcom/facebook/katana/RequestsAdapter$RequestState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    new-instance v0, Lcom/facebook/katana/RequestsAdapter$RequestState;

    const-string v1, "NOT_RESPONDED"

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/RequestsAdapter$RequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/RequestsAdapter$RequestState;->NOT_RESPONDED:Lcom/facebook/katana/RequestsAdapter$RequestState;

    .line 115
    new-instance v0, Lcom/facebook/katana/RequestsAdapter$RequestState;

    const-string v1, "RESPONSE_CONFIRMING"

    invoke-direct {v0, v1, v3}, Lcom/facebook/katana/RequestsAdapter$RequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_CONFIRMING:Lcom/facebook/katana/RequestsAdapter$RequestState;

    .line 116
    new-instance v0, Lcom/facebook/katana/RequestsAdapter$RequestState;

    const-string v1, "RESPONSE_IGNORING"

    invoke-direct {v0, v1, v4}, Lcom/facebook/katana/RequestsAdapter$RequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_IGNORING:Lcom/facebook/katana/RequestsAdapter$RequestState;

    .line 117
    new-instance v0, Lcom/facebook/katana/RequestsAdapter$RequestState;

    const-string v1, "RESPONSE_CONFIRMED"

    invoke-direct {v0, v1, v5}, Lcom/facebook/katana/RequestsAdapter$RequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_CONFIRMED:Lcom/facebook/katana/RequestsAdapter$RequestState;

    .line 118
    new-instance v0, Lcom/facebook/katana/RequestsAdapter$RequestState;

    const-string v1, "RESPONSE_IGNORED"

    invoke-direct {v0, v1, v6}, Lcom/facebook/katana/RequestsAdapter$RequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_IGNORED:Lcom/facebook/katana/RequestsAdapter$RequestState;

    .line 113
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/katana/RequestsAdapter$RequestState;

    sget-object v1, Lcom/facebook/katana/RequestsAdapter$RequestState;->NOT_RESPONDED:Lcom/facebook/katana/RequestsAdapter$RequestState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_CONFIRMING:Lcom/facebook/katana/RequestsAdapter$RequestState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_IGNORING:Lcom/facebook/katana/RequestsAdapter$RequestState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_CONFIRMED:Lcom/facebook/katana/RequestsAdapter$RequestState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_IGNORED:Lcom/facebook/katana/RequestsAdapter$RequestState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/katana/RequestsAdapter$RequestState;->$VALUES:[Lcom/facebook/katana/RequestsAdapter$RequestState;

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
    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/RequestsAdapter$RequestState;
    .locals 1
    .parameter

    .prologue
    .line 113
    const-class v0, Lcom/facebook/katana/RequestsAdapter$RequestState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/RequestsAdapter$RequestState;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/RequestsAdapter$RequestState;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/facebook/katana/RequestsAdapter$RequestState;->$VALUES:[Lcom/facebook/katana/RequestsAdapter$RequestState;

    invoke-virtual {v0}, [Lcom/facebook/katana/RequestsAdapter$RequestState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/RequestsAdapter$RequestState;

    return-object v0
.end method
