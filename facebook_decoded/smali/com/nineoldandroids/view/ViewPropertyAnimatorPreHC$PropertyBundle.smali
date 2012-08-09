.class Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorPreHC.java"


# instance fields
.field a:I

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;->a:I

    .line 147
    iput-object p2, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;->b:Ljava/util/ArrayList;

    .line 148
    return-void
.end method
