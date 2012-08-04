.class final Landroid/support/v4/app/FragmentManagerImpl;
.super Landroid/support/v4/app/FragmentManager;
.source "FragmentManager.java"


# static fields
.field static a:Z

.field private static g:Z

.field private static w:Landroid/view/animation/Interpolator;

.field private static x:Landroid/view/animation/Interpolator;


# instance fields
.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:Landroid/support/v4/app/FragmentActivity;

.field f:Ljava/lang/String;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private i:[Ljava/lang/Runnable;

.field private j:Z

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Landroid/os/Bundle;

.field private u:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x4020

    const/high16 v3, 0x3fc0

    .line 378
    sput-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    .line 381
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->g:Z

    .line 672
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->w:Landroid/view/animation/Interpolator;

    .line 673
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->x:Landroid/view/animation/Interpolator;

    .line 674
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 675
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 377
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;-><init>()V

    .line 404
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->d:I

    .line 414
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Landroid/os/Bundle;

    .line 415
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->u:Landroid/util/SparseArray;

    .line 417
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl$1;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->v:Ljava/lang/Runnable;

    return-void
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 524
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 525
    if-ne v1, v0, :cond_1

    .line 526
    const/4 v0, 0x0

    .line 537
    :cond_0
    return-object v0

    .line 528
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 529
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragement no longer exists for key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 533
    if-nez v0, :cond_0

    .line 534
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragement no longer exists for key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(FF)Landroid/view/animation/Animation;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 695
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 696
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->x:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 697
    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 698
    return-object v0
.end method

.method private static a(FFFF)Landroid/view/animation/Animation;
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v10, 0xdc

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    .line 681
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 682
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v1, p0

    move v2, p1

    move v3, p0

    move v4, p1

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 684
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->w:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 685
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 686
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 687
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 688
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->x:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 689
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 690
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 691
    return-object v9
.end method

.method private a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x3f79999a

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 703
    iget v0, p1, Landroid/support/v4/app/Fragment;->C:I

    invoke-static {}, Landroid/support/v4/app/Fragment;->s()Landroid/view/animation/Animation;

    .line 705
    iget v0, p1, Landroid/support/v4/app/Fragment;->C:I

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    iget v2, p1, Landroid/support/v4/app/Fragment;->C:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 711
    if-eqz v0, :cond_0

    .line 757
    :goto_0
    return-object v0

    .line 716
    :cond_0
    if-nez p2, :cond_1

    move-object v0, v1

    .line 717
    goto :goto_0

    .line 720
    :cond_1
    invoke-static {p2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->b(IZ)I

    move-result v0

    .line 721
    if-gez v0, :cond_2

    move-object v0, v1

    .line 722
    goto :goto_0

    .line 725
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 740
    if-nez p4, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 741
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget p4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 743
    :cond_3
    if-nez p4, :cond_4

    move-object v0, v1

    .line 744
    goto :goto_0

    .line 727
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    const/high16 v0, 0x3f90

    invoke-static {v0, v3, v4, v3}, Landroid/support/v4/app/FragmentManagerImpl;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 729
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v3, v5, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 731
    :pswitch_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v5, v3, v4, v3}, Landroid/support/v4/app/FragmentManagerImpl;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 733
    :pswitch_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    const v0, 0x3f89999a

    invoke-static {v3, v0, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 735
    :pswitch_4
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v4, v3}, Landroid/support/v4/app/FragmentManagerImpl;->a(FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 737
    :pswitch_5
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->a(FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 757
    goto :goto_0

    .line 725
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(ILandroid/support/v4/app/BackStackRecord;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1352
    monitor-enter p0

    .line 1353
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:Ljava/util/ArrayList;

    .line 1356
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1357
    if-ge p1, v0, :cond_1

    .line 1358
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1373
    :goto_0
    monitor-exit p0

    return-void

    .line 1361
    :cond_1
    :goto_1
    if-ge v0, p1, :cond_3

    .line 1362
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1363
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 1364
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Ljava/util/ArrayList;

    .line 1366
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1368
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1370
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1373
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1062
    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->a(IIIZ)V

    .line 1063
    return-void
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 515
    iget v0, p2, Landroid/support/v4/app/Fragment;->f:I

    if-gez v0, :cond_0

    .line 516
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_0
    iget v0, p2, Landroid/support/v4/app/Fragment;->f:I

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 520
    return-void
.end method

.method private static b(IZ)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1982
    const/4 v0, -0x1

    .line 1983
    sparse-switch p0, :sswitch_data_0

    .line 1994
    :goto_0
    return v0

    .line 1985
    :sswitch_0
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 1988
    :sswitch_1
    if-eqz p1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 1991
    :sswitch_2
    if-eqz p1, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    .line 1983
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private b(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 761
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->G:Z

    if-eqz v0, :cond_0

    .line 762
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->j:Z

    if-eqz v0, :cond_1

    .line 764
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->s:Z

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 767
    :cond_1
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->G:Z

    .line 768
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->d:I

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;III)V

    goto :goto_0
.end method

.method public static c(I)I
    .locals 1
    .parameter

    .prologue
    .line 1958
    const/4 v0, 0x0

    .line 1959
    sparse-switch p0, :sswitch_data_0

    .line 1970
    :goto_0
    return v0

    .line 1961
    :sswitch_0
    const/16 v0, 0x2002

    .line 1962
    goto :goto_0

    .line 1964
    :sswitch_1
    const/16 v0, 0x1001

    .line 1965
    goto :goto_0

    .line 1967
    :sswitch_2
    const/16 v0, 0x1003

    goto :goto_0

    .line 1959
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private c(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .parameter

    .prologue
    .line 1110
    iget v0, p1, Landroid/support/v4/app/Fragment;->f:I

    if-ltz v0, :cond_0

    .line 1125
    :goto_0
    return-void

    .line 1114
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1115
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    .line 1118
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->a(I)V

    .line 1119
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1122
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->a(I)V

    .line 1123
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->f:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private d(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .parameter

    .prologue
    .line 1128
    iget v0, p1, Landroid/support/v4/app/Fragment;->f:I

    if-gez v0, :cond_0

    .line 1140
    :goto_0
    return-void

    .line 1132
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->f:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1134
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    .line 1137
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    iget v1, p1, Landroid/support/v4/app/Fragment;->f:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->a(I)V

    .line 1139
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->x()V

    goto :goto_0
.end method

.method private e(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .parameter

    .prologue
    .line 1541
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->F:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1554
    :cond_0
    :goto_0
    return-void

    .line 1544
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->u:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 1545
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->u:Landroid/util/SparseArray;

    .line 1549
    :goto_1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->F:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->u:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1550
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->u:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1551
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->u:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->e:Landroid/util/SparseArray;

    .line 1552
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->u:Landroid/util/SparseArray;

    goto :goto_0

    .line 1547
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->u:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_1
.end method

.method private f(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1557
    .line 1559
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1560
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Landroid/os/Bundle;

    .line 1562
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    .line 1563
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1564
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Landroid/os/Bundle;

    .line 1565
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Landroid/os/Bundle;

    .line 1568
    :goto_0
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->E:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1569
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->e(Landroid/support/v4/app/Fragment;)V

    .line 1571
    :cond_1
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->e:Landroid/util/SparseArray;

    if-eqz v1, :cond_3

    .line 1572
    if-nez v0, :cond_2

    .line 1573
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1575
    :cond_2
    const-string v1, "android:view_state"

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1578
    :cond_3
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->H:Z

    if-nez v1, :cond_4

    .line 1580
    const-string v1, "android:user_visible_hint"

    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->H:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1583
    :cond_4
    return-object v0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private t()V
    .locals 3

    .prologue
    .line 1302
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Z

    if-eqz v0, :cond_0

    .line 1303
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1306
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1307
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not perform this action inside of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1310
    :cond_1
    return-void
.end method

.method private u()V
    .locals 0

    .prologue
    .line 1444
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/BackStackRecord;)I
    .locals 2
    .parameter

    .prologue
    .line 1332
    monitor-enter p0

    .line 1333
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1334
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:Ljava/util/ArrayList;

    .line 1337
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1338
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    monitor-exit p0

    .line 1346
    :goto_0
    return v0

    .line 1343
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1344
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1346
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1348
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .parameter

    .prologue
    .line 1246
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 1248
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1249
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 1250
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1251
    if-eqz v0, :cond_1

    iget v2, v0, Landroid/support/v4/app/Fragment;->t:I

    if-ne v2, p1, :cond_1

    .line 1264
    :cond_0
    :goto_1
    return-object v0

    .line 1249
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1257
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_4

    .line 1258
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1259
    if-eqz v0, :cond_3

    iget v2, v0, Landroid/support/v4/app/Fragment;->t:I

    if-eq v2, p1, :cond_0

    .line 1257
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 1264
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3
    .parameter

    .prologue
    .line 1268
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 1270
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1271
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 1272
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1273
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->v:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1286
    :cond_0
    :goto_1
    return-object v0

    .line 1271
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1279
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_4

    .line 1280
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1281
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->v:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1279
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 1286
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a()Landroid/support/v4/app/FragmentTransaction;
    .locals 1

    .prologue
    .line 426
    new-instance v0, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    return-object v0
.end method

.method public final a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 468
    if-gez p1, :cond_0

    .line 469
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_0
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$4;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/support/v4/app/FragmentManagerImpl$4;-><init>(Landroid/support/v4/app/FragmentManagerImpl;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/Runnable;Z)V

    .line 476
    return-void
.end method

.method final a(IIIZ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1066
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1067
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1070
    :cond_0
    if-nez p4, :cond_2

    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->d:I

    if-ne v0, p1, :cond_2

    .line 1096
    :cond_1
    :goto_0
    return-void

    .line 1074
    :cond_2
    iput p1, p0, Landroid/support/v4/app/FragmentManagerImpl;->d:I

    .line 1075
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v1, v2

    move v3, v2

    .line 1077
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1078
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1079
    if-eqz v0, :cond_3

    .line 1080
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;III)V

    .line 1081
    iget-object v4, v0, Landroid/support/v4/app/Fragment;->I:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v4, :cond_3

    .line 1082
    iget-object v0, v0, Landroid/support/v4/app/Fragment;->I:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->a()Z

    move-result v0

    or-int/2addr v3, v0

    .line 1077
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1087
    :cond_4
    if-nez v3, :cond_5

    .line 1088
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->f()V

    .line 1091
    :cond_5
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->d:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1092
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->c()V

    .line 1093
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->p:Z

    goto :goto_0
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 1852
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1853
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1854
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1855
    if-eqz v0, :cond_0

    .line 1856
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1853
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1860
    :cond_1
    return-void
.end method

.method final a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 1696
    if-nez p1, :cond_1

    .line 1796
    :cond_0
    :goto_0
    return-void

    .line 1697
    :cond_1
    check-cast p1, Landroid/support/v4/app/FragmentManagerState;

    .line 1698
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    if-eqz v0, :cond_0

    .line 1702
    if-eqz p2, :cond_3

    move v1, v2

    .line 1703
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1704
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1705
    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    iget v4, v0, Landroid/support/v4/app/Fragment;->f:I

    aget-object v3, v3, v4

    .line 1707
    iput-object v0, v3, Landroid/support/v4/app/FragmentState;->b:Landroid/support/v4/app/Fragment;

    .line 1708
    iput-object v6, v0, Landroid/support/v4/app/Fragment;->e:Landroid/util/SparseArray;

    .line 1709
    iput v2, v0, Landroid/support/v4/app/Fragment;->q:I

    .line 1710
    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->o:Z

    .line 1711
    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->k:Z

    .line 1712
    iput-object v6, v0, Landroid/support/v4/app/Fragment;->h:Landroid/support/v4/app/Fragment;

    .line 1713
    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->a:Landroid/os/Bundle;

    if-eqz v4, :cond_2

    .line 1714
    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->a:Landroid/os/Bundle;

    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1715
    iget-object v3, v3, Landroid/support/v4/app/FragmentState;->a:Landroid/os/Bundle;

    const-string v4, "android:view_state"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    iput-object v3, v0, Landroid/support/v4/app/Fragment;->e:Landroid/util/SparseArray;

    .line 1703
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1723
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    .line 1724
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 1725
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    move v0, v2

    .line 1727
    :goto_2
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    array-length v1, v1

    if-ge v0, v1, :cond_7

    .line 1728
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    aget-object v1, v1, v0

    .line 1729
    if-eqz v1, :cond_5

    .line 1730
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentState;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 1731
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1736
    iput-object v6, v1, Landroid/support/v4/app/FragmentState;->b:Landroid/support/v4/app/Fragment;

    .line 1727
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1738
    :cond_5
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1740
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    if-nez v1, :cond_6

    .line 1741
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    .line 1743
    :cond_6
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1749
    :cond_7
    if-eqz p2, :cond_a

    move v3, v2

    .line 1750
    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_a

    .line 1751
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1752
    iget v1, v0, Landroid/support/v4/app/Fragment;->i:I

    if-ltz v1, :cond_8

    .line 1753
    iget v1, v0, Landroid/support/v4/app/Fragment;->i:I

    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_9

    .line 1754
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    iget v4, v0, Landroid/support/v4/app/Fragment;->i:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->h:Landroid/support/v4/app/Fragment;

    .line 1750
    :cond_8
    :goto_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    .line 1756
    :cond_9
    const-string v1, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Re-attaching retained fragment "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " target no longer exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/support/v4/app/Fragment;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    iput-object v6, v0, Landroid/support/v4/app/Fragment;->h:Landroid/support/v4/app/Fragment;

    goto :goto_5

    .line 1765
    :cond_a
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    if-eqz v0, :cond_c

    .line 1766
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    move v1, v2

    .line 1767
    :goto_6
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    array-length v0, v0

    if-ge v1, v0, :cond_d

    .line 1768
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1769
    if-nez v0, :cond_b

    .line 1770
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No instantiated fragment for index #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1773
    :cond_b
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v4/app/Fragment;->k:Z

    .line 1774
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1767
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 1778
    :cond_c
    iput-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    .line 1782
    :cond_d
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    if-eqz v0, :cond_f

    .line 1783
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    .line 1784
    :goto_7
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 1785
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Landroid/support/v4/app/BackStackState;->a(Landroid/support/v4/app/FragmentManagerImpl;)Landroid/support/v4/app/BackStackRecord;

    move-result-object v0

    .line 1786
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1789
    iget v1, v0, Landroid/support/v4/app/BackStackRecord;->g:I

    if-ltz v1, :cond_e

    .line 1790
    iget v1, v0, Landroid/support/v4/app/BackStackRecord;->g:I

    invoke-direct {p0, v1, v0}, Landroid/support/v4/app/FragmentManagerImpl;->a(ILandroid/support/v4/app/BackStackRecord;)V

    .line 1784
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1794
    :cond_f
    iput-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method final a(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1058
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->d:I

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;III)V

    .line 1059
    return-void
.end method

.method public final a(Landroid/support/v4/app/Fragment;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1162
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->h()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 1164
    :goto_0
    iget-boolean v3, p1, Landroid/support/v4/app/Fragment;->x:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_1

    .line 1165
    :cond_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1166
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->k:Z

    .line 1170
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->l:Z

    .line 1171
    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {p0, p1, v2, p2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;III)V

    .line 1174
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1162
    goto :goto_0

    :cond_3
    move v2, v1

    .line 1171
    goto :goto_1
.end method

.method final a(Landroid/support/v4/app/Fragment;III)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 774
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->k:Z

    if-nez v0, :cond_0

    if-le p2, v1, :cond_0

    move p2, v1

    .line 777
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->l:Z

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/support/v4/app/Fragment;->a:I

    if-le p2, v0, :cond_1

    .line 779
    iget p2, p1, Landroid/support/v4/app/Fragment;->a:I

    .line 783
    :cond_1
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->G:Z

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/support/v4/app/Fragment;->a:I

    if-ge v0, v7, :cond_2

    if-le p2, v2, :cond_2

    move p2, v2

    .line 786
    :cond_2
    iget v0, p1, Landroid/support/v4/app/Fragment;->a:I

    if-ge v0, p2, :cond_19

    .line 790
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->n:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->o:Z

    if-nez v0, :cond_3

    .line 1055
    :goto_0
    return-void

    .line 793
    :cond_3
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 798
    iput-object v3, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    .line 799
    iget v0, p1, Landroid/support/v4/app/Fragment;->c:I

    invoke-virtual {p0, p1, v0, v6, v6}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;III)V

    .line 801
    :cond_4
    iget v0, p1, Landroid/support/v4/app/Fragment;->a:I

    packed-switch v0, :pswitch_data_0

    .line 1054
    :cond_5
    :goto_1
    iput p2, p1, Landroid/support/v4/app/Fragment;->a:I

    goto :goto_0

    .line 803
    :pswitch_0
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_7

    .line 805
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->d:Landroid/os/Bundle;

    const-string v4, "android:view_state"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->e:Landroid/util/SparseArray;

    .line 807
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->d:Landroid/os/Bundle;

    const-string v4, "android:target_state"

    invoke-direct {p0, v0, v4}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->h:Landroid/support/v4/app/Fragment;

    .line 809
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->h:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_6

    .line 810
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->d:Landroid/os/Bundle;

    const-string v4, "android:target_req_state"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/support/v4/app/Fragment;->j:I

    .line 813
    :cond_6
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->d:Landroid/os/Bundle;

    const-string v4, "android:user_visible_hint"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->H:Z

    .line 815
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->H:Z

    if-nez v0, :cond_7

    .line 816
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->G:Z

    .line 817
    if-le p2, v2, :cond_7

    move p2, v2

    .line 822
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/FragmentActivity;

    .line 823
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/FragmentManagerImpl;

    .line 824
    iput-boolean v6, p1, Landroid/support/v4/app/Fragment;->B:Z

    .line 825
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;)V

    .line 826
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->B:Z

    if-nez v0, :cond_8

    .line 827
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 830
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-static {}, Landroid/support/v4/app/FragmentActivity;->d()V

    .line 832
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->z:Z

    if-nez v0, :cond_9

    .line 833
    iput-boolean v6, p1, Landroid/support/v4/app/Fragment;->B:Z

    .line 834
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    .line 835
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->B:Z

    if-nez v0, :cond_9

    .line 836
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 840
    :cond_9
    iput-boolean v6, p1, Landroid/support/v4/app/Fragment;->z:Z

    .line 841
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->n:Z

    if-eqz v0, :cond_b

    .line 845
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v3, v4}, Landroid/support/v4/app/Fragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->E:Landroid/view/View;

    .line 847
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->E:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 848
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->E:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->F:Landroid/view/View;

    .line 849
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->E:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/app/NoSaveStateFrameLayout;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->E:Landroid/view/View;

    .line 850
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->w:Z

    if-eqz v0, :cond_a

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->E:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 851
    :cond_a
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->E:Landroid/view/View;

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v4}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 857
    :cond_b
    :goto_2
    :pswitch_1
    if-le p2, v1, :cond_16

    .line 858
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->n:Z

    if-nez v0, :cond_12

    .line 861
    iget v0, p1, Landroid/support/v4/app/Fragment;->u:I

    if-eqz v0, :cond_d

    .line 862
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    iget v4, p1, Landroid/support/v4/app/Fragment;->u:I

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 863
    if-nez v0, :cond_e

    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->p:Z

    if-nez v4, :cond_e

    .line 864
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No view found for id 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/support/v4/app/Fragment;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 853
    :cond_c
    iput-object v3, p1, Landroid/support/v4/app/Fragment;->F:Landroid/view/View;

    goto :goto_2

    :cond_d
    move-object v0, v3

    .line 869
    :cond_e
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->D:Landroid/view/ViewGroup;

    .line 870
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v4}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v5, p1, Landroid/support/v4/app/Fragment;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v4, v0, v5}, Landroid/support/v4/app/Fragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->E:Landroid/view/View;

    .line 872
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->E:Landroid/view/View;

    if-eqz v4, :cond_13

    .line 873
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->E:Landroid/view/View;

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->F:Landroid/view/View;

    .line 874
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->E:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/app/NoSaveStateFrameLayout;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->E:Landroid/view/View;

    .line 875
    if-eqz v0, :cond_10

    .line 876
    invoke-direct {p0, p1, p3, v1, p4}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v4

    .line 878
    if-eqz v4, :cond_f

    .line 879
    iget-object v5, p1, Landroid/support/v4/app/Fragment;->E:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 881
    :cond_f
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->E:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 883
    :cond_10
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->w:Z

    if-eqz v0, :cond_11

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->E:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 884
    :cond_11
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->E:Landroid/view/View;

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v4}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 890
    :cond_12
    :goto_3
    iput-boolean v6, p1, Landroid/support/v4/app/Fragment;->B:Z

    .line 891
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 892
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->B:Z

    if-nez v0, :cond_14

    .line 893
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 886
    :cond_13
    iput-object v3, p1, Landroid/support/v4/app/Fragment;->F:Landroid/view/View;

    goto :goto_3

    .line 896
    :cond_14
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->E:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 897
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->h_()V

    .line 899
    :cond_15
    iput-object v3, p1, Landroid/support/v4/app/Fragment;->d:Landroid/os/Bundle;

    .line 903
    :cond_16
    :pswitch_2
    if-le p2, v2, :cond_17

    .line 904
    iput-boolean v6, p1, Landroid/support/v4/app/Fragment;->B:Z

    .line 906
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->A()V

    .line 907
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->B:Z

    if-nez v0, :cond_17

    .line 908
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 913
    :cond_17
    :pswitch_3
    if-le p2, v7, :cond_5

    .line 914
    iput-boolean v6, p1, Landroid/support/v4/app/Fragment;->B:Z

    .line 916
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->m:Z

    .line 917
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->u()V

    .line 918
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->B:Z

    if-nez v0, :cond_18

    .line 919
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 922
    :cond_18
    iput-object v3, p1, Landroid/support/v4/app/Fragment;->d:Landroid/os/Bundle;

    .line 923
    iput-object v3, p1, Landroid/support/v4/app/Fragment;->e:Landroid/util/SparseArray;

    goto/16 :goto_1

    .line 926
    :cond_19
    iget v0, p1, Landroid/support/v4/app/Fragment;->a:I

    if-le v0, p2, :cond_5

    .line 927
    iget v0, p1, Landroid/support/v4/app/Fragment;->a:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    .line 1005
    :cond_1a
    :goto_4
    :pswitch_4
    if-gtz p2, :cond_5

    .line 1006
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->r:Z

    if-eqz v0, :cond_1b

    .line 1007
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 1014
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    .line 1015
    iput-object v3, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    .line 1016
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1019
    :cond_1b
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    if-eqz v0, :cond_24

    .line 1024
    iput p2, p1, Landroid/support/v4/app/Fragment;->c:I

    move p2, v1

    .line 1025
    goto/16 :goto_1

    .line 929
    :pswitch_5
    const/4 v0, 0x5

    if-ge p2, v0, :cond_1d

    .line 930
    iput-boolean v6, p1, Landroid/support/v4/app/Fragment;->B:Z

    .line 932
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->v()V

    .line 933
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->B:Z

    if-nez v0, :cond_1c

    .line 934
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 937
    :cond_1c
    iput-boolean v6, p1, Landroid/support/v4/app/Fragment;->m:Z

    .line 940
    :cond_1d
    :pswitch_6
    if-ge p2, v7, :cond_1e

    .line 941
    iput-boolean v6, p1, Landroid/support/v4/app/Fragment;->B:Z

    .line 943
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->B()V

    .line 944
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->B:Z

    if-nez v0, :cond_1e

    .line 945
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 950
    :cond_1e
    :pswitch_7
    if-ge p2, v2, :cond_1f

    .line 951
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->C()V

    .line 955
    :cond_1f
    :pswitch_8
    const/4 v0, 0x2

    if-ge p2, v0, :cond_1a

    .line 956
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->E:Landroid/view/View;

    if-eqz v0, :cond_20

    .line 960
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->e:Landroid/util/SparseArray;

    if-nez v0, :cond_20

    .line 961
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->e(Landroid/support/v4/app/Fragment;)V

    .line 964
    :cond_20
    iput-boolean v6, p1, Landroid/support/v4/app/Fragment;->B:Z

    .line 965
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->D()V

    .line 966
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->B:Z

    if-nez v0, :cond_21

    .line 967
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 970
    :cond_21
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->E:Landroid/view/View;

    if-eqz v0, :cond_23

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->D:Landroid/view/ViewGroup;

    if-eqz v0, :cond_23

    .line 972
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->d:I

    if-lez v0, :cond_28

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->r:Z

    if-nez v0, :cond_28

    .line 973
    invoke-direct {p0, p1, p3, v6, p4}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 976
    :goto_5
    if-eqz v0, :cond_22

    .line 978
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->E:Landroid/view/View;

    iput-object v2, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    .line 979
    iput p2, p1, Landroid/support/v4/app/Fragment;->c:I

    .line 980
    new-instance v2, Landroid/support/v4/app/FragmentManagerImpl$5;

    invoke-direct {v2, p0, p1}, Landroid/support/v4/app/FragmentManagerImpl$5;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 996
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->E:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 998
    :cond_22
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->D:Landroid/view/ViewGroup;

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->E:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1000
    :cond_23
    iput-object v3, p1, Landroid/support/v4/app/Fragment;->D:Landroid/view/ViewGroup;

    .line 1001
    iput-object v3, p1, Landroid/support/v4/app/Fragment;->E:Landroid/view/View;

    .line 1002
    iput-object v3, p1, Landroid/support/v4/app/Fragment;->F:Landroid/view/View;

    goto/16 :goto_4

    .line 1027
    :cond_24
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->z:Z

    if-nez v0, :cond_25

    .line 1029
    iput-boolean v6, p1, Landroid/support/v4/app/Fragment;->B:Z

    .line 1030
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->w()V

    .line 1031
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->B:Z

    if-nez v0, :cond_25

    .line 1032
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1037
    :cond_25
    iput-boolean v6, p1, Landroid/support/v4/app/Fragment;->B:Z

    .line 1038
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->y()V

    .line 1039
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->B:Z

    if-nez v0, :cond_26

    .line 1040
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1043
    :cond_26
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->z:Z

    if-nez v0, :cond_27

    .line 1044
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->d(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_1

    .line 1046
    :cond_27
    iput-object v3, p1, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/FragmentActivity;

    .line 1047
    iput-object v3, p1, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/FragmentManagerImpl;

    goto/16 :goto_1

    :cond_28
    move-object v0, v3

    goto :goto_5

    .line 801
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 927
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Landroid/support/v4/app/Fragment;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1143
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    .line 1146
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->c(Landroid/support/v4/app/Fragment;)V

    .line 1148
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->x:Z

    if-nez v0, :cond_1

    .line 1149
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1150
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->k:Z

    .line 1151
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->l:Z

    .line 1152
    if-eqz p2, :cond_1

    .line 1156
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;)V

    .line 1159
    :cond_1
    return-void
.end method

.method public final a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1799
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1800
    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    .line 1801
    return-void
.end method

.method public final a(Ljava/lang/Runnable;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1313
    if-nez p2, :cond_0

    .line 1314
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->t()V

    .line 1316
    :cond_0
    monitor-enter p0

    .line 1317
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_1

    .line 1318
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1320
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    .line 1323
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1324
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1325
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1326
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1328
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 569
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 571
    if-lez v4, :cond_1

    .line 572
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Fragments in "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 573
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 574
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 575
    :goto_0
    if-ge v2, v4, :cond_1

    .line 576
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 577
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 578
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 579
    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/Fragment;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 575
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 586
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 587
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 588
    if-lez v4, :cond_2

    .line 589
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Added Fragments:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 590
    :goto_1
    if-ge v2, v4, :cond_2

    .line 591
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 592
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 593
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 598
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 599
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 600
    if-lez v4, :cond_3

    .line 601
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Fragments Created Menus:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 602
    :goto_2
    if-ge v2, v4, :cond_3

    .line 603
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 604
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 605
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 610
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 611
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 612
    if-lez v4, :cond_4

    .line 613
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 614
    :goto_3
    if-ge v2, v4, :cond_4

    .line 615
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    .line 616
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 617
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v0, v3, p3}, Landroid/support/v4/app/BackStackRecord;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 614
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 623
    :cond_4
    monitor-enter p0

    .line 624
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 625
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 626
    if-lez v3, :cond_5

    .line 627
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack Indices:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 628
    :goto_4
    if-ge v2, v3, :cond_5

    .line 629
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    .line 630
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 631
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 628
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 636
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 637
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAvailBackStackIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 643
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 644
    if-lez v2, :cond_7

    .line 645
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    :goto_5
    if-ge v1, v2, :cond_7

    .line 647
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 648
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 649
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 646
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 640
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 654
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "FragmentManager misc state:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mCurState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->d:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 656
    const-string v0, " mStateSaved="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 657
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->r:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 658
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->p:Z

    if-eqz v0, :cond_8

    .line 659
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 660
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->p:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 662
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 663
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNoTransactionsBecause="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 667
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mAvailIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 670
    :cond_a
    return-void
.end method

.method public final a(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1905
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v1, v2

    .line 1907
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1908
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1909
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/support/v4/app/Fragment;->w:Z

    .line 1910
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1915
    :cond_1
    return v2
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1874
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v1, v2

    .line 1877
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1878
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1879
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/support/v4/app/Fragment;->w:Z

    .line 1880
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1890
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move v0, v2

    .line 1891
    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1892
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1893
    invoke-static {}, Landroid/support/v4/app/Fragment;->z()V

    .line 1891
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1899
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->m:Ljava/util/ArrayList;

    .line 1901
    return v2
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1919
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v1, v2

    .line 1920
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1921
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1922
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/support/v4/app/Fragment;->w:Z

    .line 1923
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1929
    :cond_1
    return v2
.end method

.method final a(Ljava/lang/String;II)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1460
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1519
    :cond_0
    :goto_0
    return v3

    .line 1463
    :cond_1
    if-nez p1, :cond_3

    if-gez p2, :cond_3

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_3

    .line 1464
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1465
    if-ltz v0, :cond_0

    .line 1468
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    .line 1469
    invoke-virtual {v0, v2}, Landroid/support/v4/app/BackStackRecord;->a(Z)V

    .line 1517
    :cond_2
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->u()V

    move v3, v2

    .line 1519
    goto :goto_0

    .line 1472
    :cond_3
    const/4 v0, -0x1

    .line 1473
    if-nez p1, :cond_4

    if-ltz p2, :cond_b

    .line 1476
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 1477
    :goto_1
    if-ltz v1, :cond_7

    .line 1478
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    .line 1479
    if-eqz p1, :cond_5

    invoke-virtual {v0}, Landroid/support/v4/app/BackStackRecord;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1480
    :cond_5
    if-ltz p2, :cond_6

    iget v0, v0, Landroid/support/v4/app/BackStackRecord;->g:I

    if-eq p2, v0, :cond_7

    .line 1483
    :cond_6
    add-int/lit8 v1, v1, -0x1

    .line 1486
    goto :goto_1

    .line 1487
    :cond_7
    if-ltz v1, :cond_0

    .line 1490
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_a

    .line 1491
    add-int/lit8 v1, v1, -0x1

    .line 1493
    :goto_2
    if-ltz v1, :cond_a

    .line 1494
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    .line 1495
    if-eqz p1, :cond_8

    invoke-virtual {v0}, Landroid/support/v4/app/BackStackRecord;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    if-ltz p2, :cond_a

    iget v0, v0, Landroid/support/v4/app/BackStackRecord;->g:I

    if-ne p2, v0, :cond_a

    .line 1497
    :cond_9
    add-int/lit8 v1, v1, -0x1

    .line 1498
    goto :goto_2

    :cond_a
    move v0, v1

    .line 1504
    :cond_b
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1507
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1509
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-le v1, v0, :cond_c

    .line 1510
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1509
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1512
    :cond_c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    move v4, v3

    .line 1513
    :goto_4
    if-gt v4, v6, :cond_2

    .line 1514
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    if-ne v4, v6, :cond_d

    move v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Landroid/support/v4/app/BackStackRecord;->a(Z)V

    .line 1513
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4

    :cond_d
    move v1, v3

    .line 1514
    goto :goto_5
.end method

.method public final b(I)V
    .locals 2
    .parameter

    .prologue
    .line 1377
    monitor-enter p0

    .line 1378
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1379
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Ljava/util/ArrayList;

    .line 1382
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1384
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b(Landroid/support/v4/app/BackStackRecord;)V
    .locals 1
    .parameter

    .prologue
    .line 1452
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    .line 1455
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1456
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->u()V

    .line 1457
    return-void
.end method

.method public final b(Landroid/support/v4/app/Fragment;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1177
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->w:Z

    if-nez v0, :cond_2

    .line 1179
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->w:Z

    .line 1180
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->E:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1181
    invoke-direct {p0, p1, p2, v2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1183
    if-eqz v0, :cond_0

    .line 1184
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->E:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1186
    :cond_0
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->E:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1188
    :cond_1
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->k:Z

    .line 1189
    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->a(Z)V

    .line 1193
    :cond_2
    return-void
.end method

.method public final b(Landroid/view/Menu;)V
    .locals 2
    .parameter

    .prologue
    .line 1947
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1948
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1949
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1950
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/support/v4/app/Fragment;->w:Z

    .line 1951
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1955
    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 431
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->g()Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1933
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v1, v2

    .line 1934
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1935
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1936
    if-eqz v0, :cond_1

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->w:Z

    if-nez v3, :cond_1

    .line 1937
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1938
    const/4 v2, 0x1

    .line 1943
    :cond_0
    return v2

    .line 1934
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 436
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$2;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl$2;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/Runnable;Z)V

    .line 441
    return-void
.end method

.method public final c(Landroid/support/v4/app/Fragment;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1196
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->w:Z

    if-eqz v0, :cond_2

    .line 1198
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->w:Z

    .line 1199
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->E:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1200
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1202
    if-eqz v0, :cond_0

    .line 1203
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->E:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1205
    :cond_0
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->E:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1207
    :cond_1
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->k:Z

    .line 1208
    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->a(Z)V

    .line 1212
    :cond_2
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Landroid/support/v4/app/Fragment;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1215
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->x:Z

    if-nez v0, :cond_0

    .line 1217
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->x:Z

    .line 1218
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->k:Z

    if-eqz v0, :cond_0

    .line 1220
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1221
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->k:Z

    .line 1225
    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;III)V

    .line 1228
    :cond_0
    return-void
.end method

.method public final e(Landroid/support/v4/app/Fragment;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1231
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->x:Z

    if-eqz v0, :cond_0

    .line 1233
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->x:Z

    .line 1234
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->k:Z

    if-nez v0, :cond_0

    .line 1235
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1236
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->k:Z

    .line 1237
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->d:I

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;III)V

    .line 1243
    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 3

    .prologue
    .line 445
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->t()V

    .line 446
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->b()Z

    .line 447
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method final f()V
    .locals 2

    .prologue
    .line 1099
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1107
    :cond_0
    return-void

    .line 1101
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1102
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1103
    if-eqz v0, :cond_2

    .line 1104
    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->b(Landroid/support/v4/app/Fragment;)V

    .line 1101
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final g()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1391
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->j:Z

    if-eqz v1, :cond_0

    .line 1392
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recursive entry to executePendingTransactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1395
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, v3, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v1, v3, :cond_1

    .line 1396
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread of process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v1, v2

    .line 1404
    :goto_0
    monitor-enter p0

    .line 1405
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 1406
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1427
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->s:Z

    if-eqz v0, :cond_9

    move v3, v2

    move v4, v2

    .line 1429
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 1430
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1431
    if-eqz v0, :cond_3

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->I:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v5, :cond_3

    .line 1432
    iget-object v0, v0, Landroid/support/v4/app/Fragment;->I:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->a()Z

    move-result v0

    or-int/2addr v4, v0

    .line 1429
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 1409
    :cond_4
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1410
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:[Ljava/lang/Runnable;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:[Ljava/lang/Runnable;

    array-length v1, v1

    if-ge v1, v3, :cond_6

    .line 1411
    :cond_5
    new-array v1, v3, [Ljava/lang/Runnable;

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:[Ljava/lang/Runnable;

    .line 1413
    :cond_6
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:[Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1414
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1415
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->v:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1416
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1418
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->j:Z

    move v1, v2

    .line 1419
    :goto_2
    if-ge v1, v3, :cond_7

    .line 1420
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:[Ljava/lang/Runnable;

    aget-object v4, v4, v1

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 1421
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:[Ljava/lang/Runnable;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 1419
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1416
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1423
    :cond_7
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->j:Z

    move v1, v0

    .line 1425
    goto :goto_0

    .line 1435
    :cond_8
    if-nez v4, :cond_9

    .line 1436
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->s:Z

    .line 1437
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->f()V

    .line 1440
    :cond_9
    return v1
.end method

.method final h()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1523
    const/4 v1, 0x0

    .line 1524
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1525
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 1526
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1527
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->y:Z

    if-eqz v2, :cond_1

    .line 1528
    if-nez v1, :cond_0

    .line 1529
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1531
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1532
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->z:Z

    .line 1533
    iget-object v2, v0, Landroid/support/v4/app/Fragment;->h:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->h:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->f:I

    :goto_1
    iput v2, v0, Landroid/support/v4/app/Fragment;->i:I

    .line 1525
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1533
    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    .line 1537
    :cond_3
    return-object v1
.end method

.method final i()Landroid/os/Parcelable;
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1589
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->g()Z

    .line 1591
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->g:Z

    if-eqz v0, :cond_0

    .line 1601
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Z

    .line 1604
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1690
    :cond_1
    :goto_0
    return-object v3

    .line 1609
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1610
    new-array v7, v6, [Landroid/support/v4/app/FragmentState;

    move v5, v4

    move v2, v4

    .line 1612
    :goto_1
    if-ge v5, v6, :cond_7

    .line 1613
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1614
    if-eqz v0, :cond_b

    .line 1617
    new-instance v2, Landroid/support/v4/app/FragmentState;

    invoke-direct {v2, v0}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 1618
    aput-object v2, v7, v5

    .line 1620
    iget v8, v0, Landroid/support/v4/app/Fragment;->a:I

    if-lez v8, :cond_5

    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->a:Landroid/os/Bundle;

    if-nez v8, :cond_5

    .line 1621
    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->f(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, v2, Landroid/support/v4/app/FragmentState;->a:Landroid/os/Bundle;

    .line 1623
    iget-object v8, v0, Landroid/support/v4/app/Fragment;->h:Landroid/support/v4/app/Fragment;

    if-eqz v8, :cond_6

    .line 1624
    iget-object v8, v0, Landroid/support/v4/app/Fragment;->h:Landroid/support/v4/app/Fragment;

    iget v8, v8, Landroid/support/v4/app/Fragment;->f:I

    if-gez v8, :cond_3

    .line 1625
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failure saving state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has target not in fragment manager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->h:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1627
    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    const-string v1, "  "

    new-instance v2, Ljava/io/PrintWriter;

    new-instance v5, Landroid/support/v4/util/LogWriter;

    const-string v6, "FragmentManager"

    invoke-direct {v5, v6}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v2, v4}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1629
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1631
    :cond_3
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->a:Landroid/os/Bundle;

    if-nez v8, :cond_4

    .line 1632
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v2, Landroid/support/v4/app/FragmentState;->a:Landroid/os/Bundle;

    .line 1634
    :cond_4
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->a:Landroid/os/Bundle;

    const-string v9, "android:target_state"

    iget-object v10, v0, Landroid/support/v4/app/Fragment;->h:Landroid/support/v4/app/Fragment;

    invoke-static {v8, v9, v10}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 1636
    iget v8, v0, Landroid/support/v4/app/Fragment;->j:I

    if-eqz v8, :cond_6

    .line 1637
    iget-object v2, v2, Landroid/support/v4/app/FragmentState;->a:Landroid/os/Bundle;

    const-string v8, "android:target_req_state"

    iget v0, v0, Landroid/support/v4/app/Fragment;->j:I

    invoke-virtual {v2, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v0, v1

    .line 1647
    :goto_2
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v0

    goto/16 :goto_1

    .line 1644
    :cond_5
    iget-object v0, v0, Landroid/support/v4/app/Fragment;->d:Landroid/os/Bundle;

    iput-object v0, v2, Landroid/support/v4/app/FragmentState;->a:Landroid/os/Bundle;

    :cond_6
    move v0, v1

    goto :goto_2

    .line 1652
    :cond_7
    if-eqz v2, :cond_1

    .line 1661
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 1662
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1663
    if-lez v5, :cond_8

    .line 1664
    new-array v1, v5, [I

    move v2, v4

    .line 1665
    :goto_3
    if-ge v2, v5, :cond_9

    .line 1666
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget v0, v0, Landroid/support/v4/app/Fragment;->f:I

    aput v0, v1, v2

    .line 1667
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_8
    move-object v1, v3

    .line 1674
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    .line 1675
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1676
    if-lez v5, :cond_a

    .line 1677
    new-array v3, v5, [Landroid/support/v4/app/BackStackState;

    move v2, v4

    .line 1678
    :goto_4
    if-ge v2, v5, :cond_a

    .line 1679
    new-instance v4, Landroid/support/v4/app/BackStackState;

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v4, v0}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/BackStackRecord;)V

    aput-object v4, v3, v2

    .line 1680
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 1686
    :cond_a
    new-instance v0, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    .line 1687
    iput-object v7, v0, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    .line 1688
    iput-object v1, v0, Landroid/support/v4/app/FragmentManagerState;->b:[I

    .line 1689
    iput-object v3, v0, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    move-object v3, v0

    .line 1690
    goto/16 :goto_0

    :cond_b
    move v0, v2

    goto :goto_2
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 1804
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Z

    .line 1805
    return-void
.end method

.method public final k()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1808
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Z

    .line 1809
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 1810
    return-void
.end method

.method public final l()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1813
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Z

    .line 1814
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 1815
    return-void
.end method

.method public final m()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1818
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Z

    .line 1819
    const/4 v0, 0x4

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 1820
    return-void
.end method

.method public final n()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1823
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Z

    .line 1824
    const/4 v0, 0x5

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 1825
    return-void
.end method

.method public final o()V
    .locals 2

    .prologue
    .line 1828
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 1829
    return-void
.end method

.method public final p()V
    .locals 2

    .prologue
    .line 1835
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Z

    .line 1837
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 1838
    return-void
.end method

.method public final q()V
    .locals 2

    .prologue
    .line 1841
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 1842
    return-void
.end method

.method public final r()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1845
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->r:Z

    .line 1846
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->g()Z

    .line 1847
    invoke-direct {p0, v1, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 1848
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    .line 1849
    return-void
.end method

.method public final s()V
    .locals 2

    .prologue
    .line 1863
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1864
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1865
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1866
    if-eqz v0, :cond_0

    .line 1867
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 1864
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1871
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 556
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 560
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
