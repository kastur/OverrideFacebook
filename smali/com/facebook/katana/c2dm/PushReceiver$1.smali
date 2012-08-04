.class final Lcom/facebook/katana/c2dm/PushReceiver$1;
.super Ljava/util/HashSet;
.source "PushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 119
    const-string v0, "ACCOUNT_MISSING"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/c2dm/PushReceiver$1;->add(Ljava/lang/Object;)Z

    .line 120
    const-string v0, "AUTHENTICATION_FAILED"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/c2dm/PushReceiver$1;->add(Ljava/lang/Object;)Z

    .line 121
    const-string v0, "PHONE_REGISTRATION_ERROR"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/c2dm/PushReceiver$1;->add(Ljava/lang/Object;)Z

    .line 122
    const-string v0, "TOO_MANY_REGISTRATIONS"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/c2dm/PushReceiver$1;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method
