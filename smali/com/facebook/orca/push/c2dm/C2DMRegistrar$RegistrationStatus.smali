.class public final enum Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;
.super Ljava/lang/Enum;
.source "C2DMRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

.field public static final enum CURRENT:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

.field public static final enum EXPIRED:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

.field public static final enum NONE:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-instance v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    const-string v1, "CURRENT"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->CURRENT:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    .line 65
    new-instance v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    const-string v1, "EXPIRED"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->EXPIRED:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    .line 66
    new-instance v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->NONE:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    sget-object v1, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->CURRENT:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->EXPIRED:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->NONE:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->$VALUES:[Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;
    .locals 1
    .parameter

    .prologue
    .line 63
    const-class v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->$VALUES:[Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    invoke-virtual {v0}, [Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    return-object v0
.end method
