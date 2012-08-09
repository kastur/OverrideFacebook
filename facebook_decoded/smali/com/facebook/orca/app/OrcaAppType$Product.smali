.class public final enum Lcom/facebook/orca/app/OrcaAppType$Product;
.super Ljava/lang/Enum;
.source "OrcaAppType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/app/OrcaAppType$Product;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/app/OrcaAppType$Product;

.field public static final enum FB4A:Lcom/facebook/orca/app/OrcaAppType$Product;

.field public static final enum MESSENGER:Lcom/facebook/orca/app/OrcaAppType$Product;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/facebook/orca/app/OrcaAppType$Product;

    const-string v1, "MESSENGER"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/app/OrcaAppType$Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/app/OrcaAppType$Product;->MESSENGER:Lcom/facebook/orca/app/OrcaAppType$Product;

    .line 23
    new-instance v0, Lcom/facebook/orca/app/OrcaAppType$Product;

    const-string v1, "FB4A"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/app/OrcaAppType$Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/app/OrcaAppType$Product;->FB4A:Lcom/facebook/orca/app/OrcaAppType$Product;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/orca/app/OrcaAppType$Product;

    sget-object v1, Lcom/facebook/orca/app/OrcaAppType$Product;->MESSENGER:Lcom/facebook/orca/app/OrcaAppType$Product;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/app/OrcaAppType$Product;->FB4A:Lcom/facebook/orca/app/OrcaAppType$Product;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/orca/app/OrcaAppType$Product;->$VALUES:[Lcom/facebook/orca/app/OrcaAppType$Product;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/app/OrcaAppType$Product;
    .locals 1
    .parameter

    .prologue
    .line 21
    const-class v0, Lcom/facebook/orca/app/OrcaAppType$Product;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaAppType$Product;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/app/OrcaAppType$Product;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/facebook/orca/app/OrcaAppType$Product;->$VALUES:[Lcom/facebook/orca/app/OrcaAppType$Product;

    invoke-virtual {v0}, [Lcom/facebook/orca/app/OrcaAppType$Product;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/app/OrcaAppType$Product;

    return-object v0
.end method
