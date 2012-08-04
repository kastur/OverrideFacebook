.class Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;
.super Ljava/lang/Object;
.source "ContactPickerFilterResult.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final a:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    const-string v1, ""

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;)V

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->a:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->b:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->c:Lcom/google/common/collect/ImmutableList;

    .line 26
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public final c()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->c:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method
