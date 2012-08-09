.class public final enum Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;
.super Ljava/lang/Enum;
.source "InteractionLogger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;

.field public static final enum LOCAL_DATA:Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;

.field public static final enum NETWORK_DATA:Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;

.field public static final enum NO_DATA:Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;


# instance fields
.field private final mFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 21
    new-instance v0, Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;

    const-string v1, "NO_DATA"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;->NO_DATA:Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;

    .line 22
    new-instance v0, Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;

    const-string v1, "LOCAL_DATA"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;->LOCAL_DATA:Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;

    .line 23
    new-instance v0, Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;

    const-string v1, "NETWORK_DATA"

    invoke-direct {v0, v1, v3, v5}, Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;->NETWORK_DATA:Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;

    .line 20
    new-array v0, v5, [Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;

    sget-object v1, Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;->NO_DATA:Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;->LOCAL_DATA:Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;->NETWORK_DATA:Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;->$VALUES:[Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;->mFlags:I

    .line 29
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;
    .locals 1
    .parameter

    .prologue
    .line 20
    const-class v0, Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;->$VALUES:[Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;

    invoke-virtual {v0}, [Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;->mFlags:I

    return v0
.end method
