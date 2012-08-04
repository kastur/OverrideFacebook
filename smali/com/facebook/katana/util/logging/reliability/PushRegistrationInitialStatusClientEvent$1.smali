.class synthetic Lcom/facebook/katana/util/logging/reliability/PushRegistrationInitialStatusClientEvent$1;
.super Ljava/lang/Object;
.source "PushRegistrationInitialStatusClientEvent.java"


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    invoke-static {}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->values()[Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/katana/util/logging/reliability/PushRegistrationInitialStatusClientEvent$1;->a:[I

    :try_start_0
    sget-object v0, Lcom/facebook/katana/util/logging/reliability/PushRegistrationInitialStatusClientEvent$1;->a:[I

    sget-object v1, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->CURRENT:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    invoke-virtual {v1}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/facebook/katana/util/logging/reliability/PushRegistrationInitialStatusClientEvent$1;->a:[I

    sget-object v1, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->EXPIRED:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    invoke-virtual {v1}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/facebook/katana/util/logging/reliability/PushRegistrationInitialStatusClientEvent$1;->a:[I

    sget-object v1, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->NONE:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    invoke-virtual {v1}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
