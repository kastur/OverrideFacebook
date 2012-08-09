.class public final enum Lcom/facebook/orca/common/util/TriState;
.super Ljava/lang/Enum;
.source "TriState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/common/util/TriState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/common/util/TriState;

.field public static final enum NO:Lcom/facebook/orca/common/util/TriState;

.field public static final enum UNSET:Lcom/facebook/orca/common/util/TriState;

.field public static final enum YES:Lcom/facebook/orca/common/util/TriState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/facebook/orca/common/util/TriState;

    const-string v1, "YES"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/common/util/TriState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/util/TriState;->YES:Lcom/facebook/orca/common/util/TriState;

    .line 12
    new-instance v0, Lcom/facebook/orca/common/util/TriState;

    const-string v1, "NO"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/common/util/TriState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/util/TriState;->NO:Lcom/facebook/orca/common/util/TriState;

    .line 13
    new-instance v0, Lcom/facebook/orca/common/util/TriState;

    const-string v1, "UNSET"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/common/util/TriState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/util/TriState;->UNSET:Lcom/facebook/orca/common/util/TriState;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/orca/common/util/TriState;

    sget-object v1, Lcom/facebook/orca/common/util/TriState;->YES:Lcom/facebook/orca/common/util/TriState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/common/util/TriState;->NO:Lcom/facebook/orca/common/util/TriState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/common/util/TriState;->UNSET:Lcom/facebook/orca/common/util/TriState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/orca/common/util/TriState;->$VALUES:[Lcom/facebook/orca/common/util/TriState;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/common/util/TriState;
    .locals 1
    .parameter

    .prologue
    .line 10
    const-class v0, Lcom/facebook/orca/common/util/TriState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/TriState;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/common/util/TriState;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/facebook/orca/common/util/TriState;->$VALUES:[Lcom/facebook/orca/common/util/TriState;

    invoke-virtual {v0}, [Lcom/facebook/orca/common/util/TriState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/common/util/TriState;

    return-object v0
.end method
